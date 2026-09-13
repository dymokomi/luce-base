#!/usr/bin/env python3
"""Deliver real OS termination requests; verify acknowledgement and its bound."""
import os
from pathlib import Path
import queue
import signal
import subprocess
import sys
import tempfile
import threading
import time

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
HELPER = r'''
import ctypes, sys, time
kernel = ctypes.WinDLL('kernel32', use_last_error=True)
kernel.GetConsoleWindow.restype = ctypes.c_void_p
kernel.FreeConsole()
assert kernel.AttachConsole(int(sys.argv[1])), ctypes.get_last_error()
if sys.argv[2] == 'close':
    window = kernel.GetConsoleWindow()
    assert window, ctypes.get_last_error()
    kernel.FreeConsole()
    user = ctypes.WinDLL('user32', use_last_error=True)
    user.PostMessageW.argtypes = [ctypes.c_void_p, ctypes.c_uint, ctypes.c_size_t, ctypes.c_ssize_t]
    assert user.PostMessageW(window, 0x0010, 0, 0), ctypes.get_last_error()
else:
    handler_type = ctypes.WINFUNCTYPE(ctypes.c_int, ctypes.c_uint32)
    handler = handler_type(lambda event: 1)
    assert kernel.SetConsoleCtrlHandler(handler, True), ctypes.get_last_error()
    assert kernel.GenerateConsoleCtrlEvent(1, 0), ctypes.get_last_error()
    time.sleep(.1)
    kernel.FreeConsole()
'''


def exercise(binary, marker, event, timeout=False):
    options = {}
    if os.name == 'nt':
        startup = subprocess.STARTUPINFO()
        startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
        startup.wShowWindow = subprocess.SW_HIDE
        options = dict(creationflags=subprocess.CREATE_NEW_CONSOLE, startupinfo=startup)
    child = subprocess.Popen([binary, marker, 'timeout' if timeout else 'drain'],
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE, **options)
    try:
        ready = queue.Queue()
        threading.Thread(target=lambda: ready.put(child.stdout.readline()), daemon=True).start()
        assert ready.get(timeout=15) == b'READY\n', 'subscription startup failed'
        start = time.monotonic()
        if os.name == 'nt':
            subprocess.run([sys.executable, '-c', HELPER, str(child.pid), event], check=True, timeout=5)
        else:
            os.kill(child.pid, signal.SIGTERM)
        output, errors = child.communicate(timeout=6)
        elapsed = time.monotonic() - start
        assert not output and not errors, (output, errors)
        if timeout:
            assert not marker.exists() and child.returncode == 0xC000013A, child.returncode
            assert 3.5 <= elapsed < 5.5, elapsed
        else:
            allowed = (0, 0xC000013A) if event == 'close' else (0,)
            assert child.returncode in allowed, child.returncode
            assert marker.read_bytes() == b'all owners drained'
            marker.unlink()
    finally:
        if child.poll() is None:
            child.kill()
            child.communicate()


with tempfile.TemporaryDirectory(prefix='luce-termination-') as directory:
    work = Path(directory)
    modes = [["--native", "--opt", str(n)] for n in range(4)] + [
        ["--backend=c"], ["--backend=c", "--release"]]
    for flags in modes:
        binary = work / ('test.exe' if os.name == 'nt' else 'test')
        subprocess.run([COMPILER, 'build', ROOT / 'tests/programs/termination/main.lucb', *flags,
                        '-o', binary], check=True, timeout=120)
        exercise(binary, work / 'marker', 'break')
        if os.name == 'nt':
            exercise(binary, work / 'marker', 'close')
            exercise(binary, work / 'marker', 'close', timeout=True)
        print('PASS termination delivery, multiple owners and acknowledgement', *flags, flush=True)
