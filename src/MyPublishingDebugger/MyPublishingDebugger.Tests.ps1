Describe "PSMockModule" -Tag 'Integration' {
    BeforeAll {
        $ErrorView = 'NormalView'
    }
    BeforeEach {
    }
    AfterEach {
        $script:stdout | Out-String -Stream | % { $_.Trim() } | ? { $_ } | Write-Host
    }
    It "Runs Publishing-Debugger1" {
        $script:stdout = Publishing-Debugger1 -ErrorAction Stop
    }
    It "Runs Publishing-Debugger2" {
        $script:stdout = Publishing-Debugger2 -ErrorAction Stop
    }
}
