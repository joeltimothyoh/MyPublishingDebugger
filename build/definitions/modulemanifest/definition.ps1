# - Initial release: Run 'New-GUID' to generate a unique GUID for identifying the module on PSGallery. Then fill in all other relevant details.
# - Subsequent releases: Update all relevant details.
# - To publish the module, tag the commit that is to be published and push the tag.
# - You can use dev-entrypoint.ps1 in your development environment to simulate generation of the manifest.

@{
    RootModule = 'MyPublishingDebugger.psm1'
    # ModuleVersion = ''                            # Value will be set on a release based on the release tag. Defaults to '0.0.0' in development environments and regular CI builds
    GUID = 'f47bab8e-b33d-4410-83ad-f7b2dd2adc93'
    Author = 'Joel Timothy Oh'
    CompanyName = 'Joel Timothy Oh'
    Copyright = '(c) 2019 Joel Timothy Oh.'
    Description = 'A powershell module for debugging publishing of modules.'
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
            LicenseUri = 'https://github.com/joeltimothyoh/MyPublishingDebugger/blob/master/LICENSE'
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
