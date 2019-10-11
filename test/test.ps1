[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$global:PesterDebugPreference_ShowFullErrors = $true
$ErrorActionPreference = 'Stop'

"Installing dependencies" | Write-Host
# Install Pester if needed
$pesterMinimumVersion = [version]'4.0.0'
$pester = Get-Module Pester -ListAvailable -ErrorAction SilentlyContinue
if (!$pester -or !($pester.Version -gt $pesterMinimumVersion)) {
    Install-Module Pester -Force -Scope CurrentUser
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
