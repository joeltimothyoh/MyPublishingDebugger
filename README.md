# MyPublishingDebugger

[![badge-build-azuredevops-build-img][]][badge-build-azuredevops-build-src] [![badge-version-github-tag-img][]][badge-version-github-tag-src] [![badge-version-powershellgallery-releases-img][]][badge-version-powershellgallery-releases-src]

[badge-build-azuredevops-build-img]: https://img.shields.io/azure-devops/build/joeltimothyoh/MyPublishingDebugger/17/master.svg?label=build&logo=azure-pipelines&style=flat-square
[badge-build-azuredevops-build-src]: https://dev.azure.com/joeltimothyoh/MyPublishingDebugger/_build?definitionId=17
[badge-version-github-tag-img]: https://img.shields.io/github/v/tag/joeltimothyoh/MyPublishingDebugger?style=flat-square
[badge-version-github-tag-src]: https://github.com/joeltimothyoh/MyPublishingDebugger/releases
[badge-version-powershellgallery-releases-img]: https://img.shields.io/powershellgallery/v/MyPublishingDebugger?logo=powershell&logoColor=white&label=PSGallery&labelColor=&style=flat-square
[badge-version-powershellgallery-releases-src]: https://www.powershellgallery.com/packages/MyPublishingDebugger/

A mock powershell module for templating and reference.

## Installation

First, register [`PSGallery`](https://www.powershellgallery.com/) as a PowerShell repository:

```powershell
Register-PSRepository -Default
```

To install the module:

```powershell
# For the current user
Install-Module -Name MyPublishingDebugger -Repository PSGallery -Scope CurrentUser

# For all users
Install-Module -Name MyPublishingDebugger -Repository PSGallery -Scope AllUsers
```

## Usage

```powershell
# Runs Publishing-Debugger1
Publishing-Debugger1

# Runs Publishing-Debugger1
Publishing-Debugger1
```

## Administration

To import the module:

```powershell
# Import the installed version
Import-Module -Name MyPublishingDebugger -Force -Verbose

# Import the git submodule
Import-Module .\path\to\MyPublishingDebugger\MyPublishingDebugger.psm1 -Force -Verbose
```

To list all available functions:

```powershell
Get-Command -Module MyPublishingDebugger
```

To list all installed versions:

```powershell
Get-Module -Name MyPublishingDebugger -ListAvailable
```

To update the module:

```powershell
Update-Module -Name MyPublishingDebugger -Verbose
```
