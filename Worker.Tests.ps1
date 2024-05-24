BeforeAll {
    . "$PSScriptroot\Service.ps1"
    . "$PSScriptroot\Worker.ps1"

    $service = [Service]::new()

    $serviceMock = New-MockObject -InputObject $service -Methods @{
        GetMessage = { 
            param($name) 
            return "Hello from mock $($name)" 
        }
    }

    $worker = [Worker]::new($serviceMock)
}

Describe "WorkerTests" {
    It "Can_GetMessage_ReturnsProperMessage" {
        $message = $worker.GetMessage("Test User 1")
        $message | Should -Be 'Hello from mock Test User 1'
        
        $invokes = $serviceMock._GetMessage
        $invokes | Should -HaveCount 1
        $invokes[0].Arguments | Should -Be "Test User 1"
    }
}