param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $Name
)

. "$PSScriptroot\Service.ps1"
. "$PSScriptroot\Worker.ps1"

$service = [Service]::new()
$worker = [Worker]::new($service)
$message = $worker.GetMessage($Name)
Write-Output $message