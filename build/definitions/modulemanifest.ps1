# - Initial setup: Fill in the GUID value. Generate one by running the command 'New-GUID'. Then fill in all relevant details.
# - Ensure all relevant details are updated prior to publishing each version of the module.
# - To simulate generation of the manifest based on this definition, run the included development entrypoint script Invoke-PSModulePublisher.ps1.
# - To publish the module, tag the associated commit and push the tag.

@{
    RootModule = 'MyPublishingDebugger.psm1'
    # ModuleVersion = ''                            # Value will be set for each publication based on the tag ref. Defaults to '0.0.0' in development environments and regular CI builds
    GUID = 'f47bab8e-b33d-4410-83ad-f7b2dd2adc93'
    Author = 'Joel Timothy Oh'
    CompanyName = 'Joel Timothy Oh'
    Copyright = '(c) 2019 Joel Timothy Oh'
    Description = 'A PowerShell module for debugging publishing of modules.'
    PowerShellVersion = '3.0'
    # PowerShellHostName = ''
    # PowerShellHostVersion = ''
    # DotNetFrameworkVersion = ''
    # CLRVersion = ''
    # ProcessorArchitecture = ''
    # RequiredModules = @()
    # RequiredAssemblies = @()
    # ScriptsToProcess = @()
    # TypesToProcess = @()
    # FormatsToProcess = @()
    # NestedModules = @()
    FunctionsToExport = @(
        'Publishing-Debugger1'
        'Publishing-Debugger2'
    )
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()
    # DscResourcesToExport = @()
    # ModuleList = @()
    # FileList = @()
    PrivateData = @{
        # PSData = @{           # Properties within PSData will be correctly added to the manifest via Update-ModuleManifest without the PSData key. Leave the key commented out.
            Tags = @(
                'publish'
                'debug'
                'module'
                'template'
                'psgallery'
            )
            LicenseUri = 'https://raw.githubusercontent.com/joeltimothyoh/MyPublishingDebugger/master/LICENSE'
            ProjectUri = 'https://github.com/joeltimothyoh/MyPublishingDebugger'
            # IconUri = ''
            # ReleaseNotes = ''
            # Prerelease = ''
            # RequireLicenseAcceptance = $false
            # ExternalModuleDependencies = @()
        # }
        # HelpInfoURI = ''
        # DefaultCommandPrefix = ''
    }
}
