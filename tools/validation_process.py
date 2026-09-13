"""Bound each Windows test invocation to an owned process tree.

The supervisor joins a kill-on-close job before creating the program. Killing
or exiting the supervisor therefore reaps descendants too, without the race of
assigning an already-running program to a job. Unix uses subprocess directly.
"""
from pathlib import Path
import os
import shutil
import subprocess
import sys
import time


def run(command, **options):
    command = list(map(str, command))
    if os.name == "nt":
        command = [sys.executable, str(Path(__file__).resolve()), "--child", *command]
    return subprocess.run(command, **options)


def remove_directory(path, timeout=5):
    """Allow asynchronous Windows handle release, but report persistent failure."""
    deadline = time.monotonic() + timeout
    while True:
        try:
            shutil.rmtree(path)
            return
        except FileNotFoundError:
            return
        except PermissionError:
            if time.monotonic() >= deadline:
                raise
            time.sleep(0.05)


def child(command):
    import ctypes
    from ctypes import wintypes as w

    class Limits(ctypes.Structure):
        _fields_ = [("process_time", ctypes.c_int64), ("job_time", ctypes.c_int64),
                    ("flags", w.DWORD), ("minimum_working_set", ctypes.c_size_t),
                    ("maximum_working_set", ctypes.c_size_t), ("process_limit", w.DWORD),
                    ("affinity", ctypes.c_size_t), ("priority", w.DWORD),
                    ("scheduling", w.DWORD)]

    class Counters(ctypes.Structure):
        _fields_ = [(name, ctypes.c_uint64) for name in
                    ("read_ops", "write_ops", "other_ops", "read_bytes", "write_bytes", "other_bytes")]

    class ExtendedLimits(ctypes.Structure):
        _fields_ = [("basic", Limits), ("io", Counters),
                    ("process_memory", ctypes.c_size_t), ("job_memory", ctypes.c_size_t),
                    ("peak_process_memory", ctypes.c_size_t), ("peak_job_memory", ctypes.c_size_t)]

    kernel = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel.CreateJobObjectW.argtypes = [ctypes.c_void_p, w.LPCWSTR]
    kernel.CreateJobObjectW.restype = w.HANDLE
    kernel.SetInformationJobObject.argtypes = [w.HANDLE, ctypes.c_int, ctypes.c_void_p, w.DWORD]
    kernel.SetInformationJobObject.restype = w.BOOL
    kernel.AssignProcessToJobObject.argtypes = [w.HANDLE, w.HANDLE]
    kernel.AssignProcessToJobObject.restype = w.BOOL
    kernel.GetCurrentProcess.argtypes = []
    kernel.GetCurrentProcess.restype = w.HANDLE
    job = kernel.CreateJobObjectW(None, None)
    if not job:
        raise ctypes.WinError(ctypes.get_last_error())
    limits = ExtendedLimits()
    limits.basic.flags = 0x2000  # JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE
    if not kernel.SetInformationJobObject(job, 9, ctypes.byref(limits), ctypes.sizeof(limits)):
        raise ctypes.WinError(ctypes.get_last_error())
    if not kernel.AssignProcessToJobObject(job, kernel.GetCurrentProcess()):
        raise ctypes.WinError(ctypes.get_last_error())
    # This process owns the only job handle. The OS closes it at process exit,
    # after the child's status has been collected; surviving descendants die too.
    return subprocess.run(command).returncode


if __name__ == "__main__":
    if os.name != "nt" or len(sys.argv) < 3 or sys.argv[1] != "--child":
        raise SystemExit("validation_process.py is an internal Windows test supervisor")
    raise SystemExit(child(sys.argv[2:]))
