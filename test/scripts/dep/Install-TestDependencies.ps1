[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

try {
    Push-Location $PSScriptRoot

    # Install Pester if needed
    "Checking Pester version" | Write-Host
    $pesterMinimumVersion = [version]'4.0.0'
    $pesterMaximumVersion = [version]'4.10.1'
    $pester = Get-Module 'Pester' -ListAvailable -ErrorAction SilentlyContinue
    if (!$pester -or !($pester.Version -ge $pesterMinimumVersion) -or !($pester.Version -le $pesterMaximumVersion)) {
        "Installing Pester" | Write-Host
        Install-Module -Name 'Pester' -Repository 'PSGallery' -MinimumVersion $pesterMinimumVersion -MaximumVersion $pesterMaximumVersion -Scope CurrentUser -Force
    }
    Get-Module Pester -ListAvailable

    if ($env:OS -ne 'Windows_NT') {
        if ($IsLinux) {
            "Installing dependencies for linux" | Write-Host
        }
        if ($IsMacOS) {
            "Installing dependencies for MacOS" | Write-Host
        }
    }else {
        "Installing dependencies for Windows" | Write-Host
    }

}catch {
    throw
}finally{
    Pop-Location
}
