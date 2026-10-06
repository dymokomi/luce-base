#!/bin/bash
# After the gate: every process still running whose executable lives under the workspace or a
# temporary directory (what the gate's checks build and run), or a debugger or `leaks` the
# checks start, listed into build/leftovers.txt for the artifact. Nothing is ended here: a
# leftover is a finding, and the check that left it must reap its own children.
set -u
mkdir -p build
workspace=${GITHUB_WORKSPACE:-$(cd .. && pwd)}
ps -axo pid=,ppid=,stat=,etime=,comm= > build/processes.txt
awk -v workspace="$workspace" '{
    path = $5
    if (index(path, workspace "/") == 1 || path ~ /^\/(private\/)?var\/folders\// || path ~ /^\/tmp\// \
        || path ~ /(debugserver|lldb|\/leaks)$/) print
}' build/processes.txt > build/leftovers.txt
if [ -s build/leftovers.txt ]; then
    echo "processes the gate left running (pid ppid stat elapsed executable):"
    cat build/leftovers.txt
else
    echo "the gate left no process running"
fi
