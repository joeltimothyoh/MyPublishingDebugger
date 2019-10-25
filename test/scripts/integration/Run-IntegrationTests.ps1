[CmdletBinding()]
param()

$ErrorActionPreference = 'Continue'
$VerbosePreference = 'Continue'

$failedCount = 0

$functionTestScriptBlock = {
    try {
        "Command: $script:cmd" | Write-Verbose
        "Args:" | Write-Verbose
        $script:cmdArgs | Out-String -Stream | % { $_.Trim() } | ? { $_ } | Write-Verbose
        & $script:cmd @cmdArgs
    }catch {
        $_ | Write-Error
        $script:failedCount++
    }
}

# Function: Publishing-Debugger1
$cmd = "Publishing-Debugger1"
$cmdArgs = @{
    Verbose = $true
}
& $functionTestScriptBlock

# Function: Publishing-Debugger2
$cmd = "Publishing-Debugger2"
$cmdArgs = @{
    Verbose = $true
}
& $functionTestScriptBlock


###########
# Results #
###########
if ($failedCount -gt 0) {
    "$failedCount tests failed." | Write-Warning
}
$failedCount
