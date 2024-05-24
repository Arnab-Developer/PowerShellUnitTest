. "$PSScriptroot\Service.ps1"
. "$PSScriptroot\Worker.ps1"

$service = [Service]::new()
$worker = [Worker]::new($service)
$message = $worker.GetMessage("Jon1")
Write-Output $message