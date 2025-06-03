# This script checks if a 32-bit application is installed by verifying its executable file.

# Define the application name and expected installation path
$appName = "FreeCommander XE"
$appExecutable = "FreeCommander.exe"
$appPath = "$env:ProgramFiles (x86)\$appName\$appExecutable"

# Check if the application's executable file exists
if (Test-Path $appPath) {
    Write-Host "$appName is installed at $appPath."
    exit 0
} else {
    Write-Host "$appName is not installed."
    exit 1
}
