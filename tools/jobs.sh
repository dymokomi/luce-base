#!/bin/sh
# How many cases a suite runs at once: LUCE_JOBS, else the machine's cores.
if [ -n "${LUCE_JOBS:-}" ]; then echo "$LUCE_JOBS"; exit 0; fi
getconf _NPROCESSORS_ONLN 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4
