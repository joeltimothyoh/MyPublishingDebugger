[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

"Installing test dependencies" | Write-Host

# Install Pester if needed
"Checking Pester version" | Write-Host
$pesterMinimumVersion = [version]'4.0.0'
$pester = Get-Module 'Pester' -ListAvailable -ErrorAction SilentlyContinue
if (!$pester -or !($pester.Version -gt $pesterMinimumVersion)) {
    "Installing Pester" | Write-Host
    Install-Module -Name 'Pester' -Repository 'PSGallery' -MinimumVersion $pesterMinimumVersion -Scope CurrentUser -Force
}
Get-Module Pester -ListAvailable

# Run tests
"Running tests" | Write-Host
try {
    $global:PesterDebugPreference_ShowFullErrors = $true
    Publishing-Debugger1 -Verbose
    Publishing-Debugger2 -Verbose

}catch {
    throw
}
