# Windows: run tools/fuzz_runner.py from a scheduled task (LuceFuzz) in this checkout, so it
# outlives the SSH session that starts it; -Stop ends the runner and removes the task.
# Usage: powershell -ExecutionPolicy Bypass -File tools\fuzz_task.ps1 [-Stop]
param([switch]$Stop)
$root = Split-Path -Parent $PSScriptRoot
$py = (Get-Command python).Source
if ($Stop) {
    & $py "$root\tools\fuzz_runner.py" --stop
    Unregister-ScheduledTask -TaskName LuceFuzz -Confirm:$false -ErrorAction SilentlyContinue
    exit 0
}
New-Item -ItemType Directory -Force "$root\build\fuzz" | Out-Null
$action = New-ScheduledTaskAction -Execute $py -Argument "`"$root\tools\fuzz_runner.py`"" -WorkingDirectory $root
# no time limit, on battery too, below normal priority
$settings = New-ScheduledTaskSettingsSet -ExecutionTimeLimit ([TimeSpan]::Zero) -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -Priority 7
Register-ScheduledTask -TaskName LuceFuzz -Action $action -Settings $settings -Force | Out-Null
Start-ScheduledTask -TaskName LuceFuzz
(Get-ScheduledTask -TaskName LuceFuzz).State
