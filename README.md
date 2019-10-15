# MyPublishingDebugger

[![badge-build-azuredevops-build-img][]][badge-build-azuredevops-build-src] [![badge-version-github-release-img][]][badge-version-github-release-src] [![badge-version-powershellgallery-releases-img][]][badge-version-powershellgallery-releases-src]

[badge-build-azuredevops-build-img]: https://img.shields.io/azure-devops/build/joeltimothyoh/MyPublishingDebugger/17/master.svg?label=build&logo=azure-pipelines&style=flat-square
[badge-build-azuredevops-build-src]: https://dev.azure.com/joeltimothyoh/MyPublishingDebugger/_build?definitionId=17
[badge-version-github-release-img]: https://img.shields.io/github/v/release/joeltimothyoh/MyPublishingDebugger?style=flat-square
[badge-version-github-release-src]: https://github.com/joeltimothyoh/MyPublishingDebugger/releases
[badge-version-powershellgallery-releases-img]: https://img.shields.io/powershellgallery/v/MyPublishingDebugger?logo=powershell&logoColor=white&label=PSGallery&labelColor=&style=flat-square
[badge-version-powershellgallery-releases-src]: https://www.powershellgallery.com/packages/MyPublishingDebugger/

A powershell module for debugging publishing of modules.

## Requirements

- [Windows PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell?view=powershell-5.1) or [PowerShell Core](https://github.com/powershell/powershell).

## Installation

First, ensure [`PSGallery`](https://www.powershellgallery.com/) is registered as a PowerShell repository:

```powershell
Register-PSRepository -Default -Verbose
```

To install the module:

```powershell
# Latest, for the current user
Install-Module -Name MyPublishingDebugger -Repository PSGallery -Scope CurrentUser -Verbose

# Specific version, for the current user
Install-Module -Name MyPublishingDebugger -Repository PSGallery -RequiredVersion x.x.x -Scope CurrentUser -Verbose

# Latest, for all users
Install-Module -Name MyPublishingDebugger -Repository PSGallery -Scope AllUsers -Verbose
```

## Usage

### Functions

To run Publishing-Debugger1:

```powershell
Publishing-Debugger1 -Verbose
```

To run Publishing-Debugger2:

```powershell
Publishing-Debugger2 -Verbose
```

## Administration

### Versions

To list all available functions of the module:

```powershell
Get-Command -Module MyPublishingDebugger
```

To list versions of the module on `PSGallery`:

```powershell
# Latest
Find-Module -Name MyPublishingDebugger -Repository PSGallery -Verbose

# All versions
Find-Module -Name MyPublishingDebugger -Repository PSGallery -AllVersions -Verbose
```

To update the module (**Existing versions are left intact**):

```powershell
# Latest
Update-Module -Name MyPublishingDebugger -Verbose

# Specific version
Update-Module -Name MyPublishingDebugger -RequiredVersion x.x.x -Verbose
```

To uninstall the module:

```powershell
# Latest
Uninstall-Module -Name MyPublishingDebugger -Verbose

# All versions
Uninstall-Module -Name MyPublishingDebugger -AllVersions -Verbose

# To uninstall all other versions other than x.x.x
Get-Module -Name MyPublishingDebugger -ListAvailable | ? { $_.Version -ne 'x.x.x' } | % { Uninstall-Module -Name $_.Name -RequiredVersion $_.Version -Verbose }

# Tip: Simulate uninstalls with -WhatIf
```

### Repositories

To get all registered PowerShell repositories:

```powershell
Get-PSRepository -Verbose
```

To set the installation policy for the `PSGallery` repository:

```powershell
# PSGallery (trusted)
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose

# PSGallery (untrusted)
Set-PSRepository -Name PSGallery -InstallationPolicy Untrusted -Verbose
```

### Development

To import / re-import the module:

```powershell
# Installed version
Import-Module -Name MyPublishingDebugger -Force -Verbose

# Project version
Import-Module .\src\MyPublishingDebugger\MyPublishingDebugger.psm1 -Force -Verbose
```

To remove imported functions of the module:

```powershell
Remove-Module -Name MyPublishingDebugger -Verbose
```

To list imported versions of the module:

```powershell
Get-Module -Name MyPublishingDebugger
```

To list all installed versions of the module available for import:

```powershell
Get-Module -Name MyPublishingDebugger -ListAvailable -Verbose
```
