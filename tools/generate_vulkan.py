#!/usr/bin/env python3
"""Generate the standard GPU backend's Vulkan ABI subset from Khronos vk.xml.

The generated Base declarations have no C shim or runtime SDK dependency.
Regeneration requires the Vulkan SDK registry; builds use the checked-in output.
"""
import argparse
from pathlib import Path
import re
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
COMMANDS = '''
vkCreateInstance vkDestroyInstance vkEnumeratePhysicalDevices
vkGetPhysicalDeviceQueueFamilyProperties vkGetPhysicalDeviceMemoryProperties
vkGetPhysicalDeviceFormatProperties vkCreateDevice vkDestroyDevice vkGetDeviceQueue
vkCreateWin32SurfaceKHR vkGetPhysicalDeviceWin32PresentationSupportKHR vkDestroySurfaceKHR vkGetPhysicalDeviceSurfaceSupportKHR
vkGetPhysicalDeviceSurfaceCapabilitiesKHR vkGetPhysicalDeviceSurfaceFormatsKHR
vkCreateSwapchainKHR vkDestroySwapchainKHR vkGetSwapchainImagesKHR
vkAcquireNextImageKHR vkQueuePresentKHR vkQueueSubmit vkQueueWaitIdle vkDeviceWaitIdle
vkCreateImageView vkDestroyImageView vkCreateImage vkDestroyImage
vkGetImageMemoryRequirements vkAllocateMemory vkFreeMemory vkBindImageMemory
vkCreateBuffer vkDestroyBuffer vkGetBufferMemoryRequirements vkBindBufferMemory
vkMapMemory vkUnmapMemory vkCreateRenderPass vkDestroyRenderPass
vkCreateFramebuffer vkDestroyFramebuffer vkCreateShaderModule vkDestroyShaderModule
vkCreatePipelineLayout vkDestroyPipelineLayout vkCreateGraphicsPipelines vkDestroyPipeline
vkCreateCommandPool vkDestroyCommandPool vkAllocateCommandBuffers vkResetCommandPool
vkBeginCommandBuffer vkEndCommandBuffer vkCmdBeginRenderPass vkCmdEndRenderPass
vkCmdBindPipeline vkCmdSetViewport vkCmdSetScissor vkCmdBindVertexBuffers vkCmdDraw
vkCreateSemaphore vkDestroySemaphore vkCreateFence vkDestroyFence
vkWaitForFences vkResetFences
'''.split()


def vulkan(node):
    return 'vulkan' in node.get('api', 'vulkan').split(',')


def members(node):
    return [member for member in node.findall('member') if vulkan(member)]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('registry', type=Path)
    args = parser.parse_args()
    registry = ET.parse(args.registry).getroot()
    types = {t.get('name') or t.findtext('name'): t for t in registry.findall('types/type') if vulkan(t)}
    commands = {c.findtext('proto/name'): c for c in registry.findall('commands/command') if c.find('proto') is not None and vulkan(c)}
    values = {}
    for e in registry.findall('.//enum'):
        if e.get('value'):
            values[e.get('name')] = e.get('value')
        elif e.get('offset'):
            extension = e.get('extnumber')
            if extension:
                values[e.get('name')] = str(1000000000 + (int(extension) - 1) * 1000 + int(e.get('offset')))
    for extension in registry.findall('extensions/extension'):
        for e in extension.findall('require/enum'):
            if e.get('offset'):
                values[e.get('name')] = str(1000000000 + (int(e.get('extnumber', extension.get('number'))) - 1) * 1000 + int(e.get('offset')))

    needed = set()
    scalars = {'void': 'void', 'char': 'u8', 'float': 'f32', 'double': 'f64',
               'int32_t': 'i32', 'uint32_t': 'u32', 'int64_t': 'i64', 'uint64_t': 'u64',
               'uint8_t': 'u8', 'uint16_t': 'u16', 'size_t': 'usize',
               'HINSTANCE': 'void*?', 'HWND': 'void*?', 'HANDLE': 'void*?',
               'LPCWSTR': 'u16*?', 'SECURITY_ATTRIBUTES': 'void', 'DWORD': 'u32'}

    def base_type(name):
        if name in scalars:
            return scalars[name]
        item = types[name]
        if item.get('alias'):
            return base_type(item.get('alias'))
        category = item.get('category')
        if category in ('struct', 'union'):
            if name not in needed:
                needed.add(name)
                for member in members(item):
                    declaration(member)
            return name
        if category == 'handle':
            return 'u64'
        if category == 'enum':
            return 'i32' if name == 'VkResult' else 'u32'
        if category == 'funcpointer':
            return 'void*?'
        if category in ('bitmask', 'basetype'):
            return base_type(item.findtext('type'))
        raise ValueError((name, category))

    def declaration(node):
        name = node.findtext('name')
        kind = node.findtext('type')
        text = ''.join(node.itertext())
        before = text.split(name)[0]
        depth = before.count('*')
        if kind == 'VkAllocationCallbacks':
            return name, 'void*?'
        result = base_type(kind)
        if depth:
            if kind == 'char':
                result = 'c.str' + ('*?' * (depth - 1))
            else:
                result += '*?' * depth
        array = re.search(r'\[([^\]]+)\]', text.split(name, 1)[1])
        if array:
            length = array.group(1)
            length = values.get(length, length)
            result += f'[{length}]'
        return name, result

    functions = []
    for name in COMMANDS:
        command = commands[name]
        parameters = [declaration(p) for p in command.findall('param') if vulkan(p)]
        result = base_type(command.findtext('proto/type'))
        params = ', '.join(f'{n}: {t}' for n, t in parameters)
        functions.append(f'extern func {name}({params})' + (f' -> {result}' if result != 'void' else ''))
    lines = ['## Generated from the Khronos Vulkan registry by tools/generate_vulkan.py.',
             '## All handles are 64-bit in this x86_64 backend; no Vulkan headers are required.', '']
    for name in sorted(needed):
        item = types[name]
        # Clear unions have a fixed 16-byte ABI; color floats also store depth/stencil.
        if name == 'VkClearValue':
            lines += ['extern struct VkClearValue:', '    color: f32[4]', '']
            continue
        if item.get('category') == 'union':
            continue
        lines.append(f'extern struct {name}:')
        for member in members(item):
            n, t = declaration(member)
            lines.append(f'    {n}: {t}')
        lines.append('')
        tag = item.find('member[@values]')
        if tag is not None:
            constant = tag.get('values')
            lines += [f'let {constant}: u32 = {values[constant]}', '']
    lines += functions
    output = ROOT / 'src/std/gpu/vulkan/bindings.lucb'
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text('\n'.join(lines) + '\n', encoding='utf-8', newline='\n')
    print(f'wrote {output.relative_to(ROOT)} ({len(needed)} structures, {len(functions)} functions)')


if __name__ == '__main__':
    main()
