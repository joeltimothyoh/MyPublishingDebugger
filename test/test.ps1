[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$global:PesterDebugPreference_ShowFullErrors = $true
$ErrorActionPreference = 'Stop'

"Installing test dependencies" | Write-Host

# Install Pester if needed
"Checking Pester version" | Write-Host
$pesterMinimumVersion = [version]'4.0.0'
$pester = Get-Module 'Pester' -ListAvailable -ErrorAction SilentlyContinue
if (!$pester -or !($pester.Version -gt $pesterMinimumVersion)) {
    "Installing Pester" | Write-Host
    Install-Module -Name 'Pester' -Scope CurrentUser -Force
}
Get-Module Pester -ListAvailable

# Begin tests
"`nBegin tests" | Write-Host
try {
    Publishing-Debugger1 -Verbose
    Publishing-Debugger2 -Verbose

}catch {
    throw
}
