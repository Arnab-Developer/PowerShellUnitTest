BeforeAll {
    . "$PSScriptroot\Service.ps1"
    $service = [Service]::new()
}

Describe "ServiceTests" {
    It "Can_GetMessage_ReturnsProperMessage" {
        $message = $service.GetMessage("Test User 1")
        $message | Should -Be 'Hello Test User 1'
    }
}