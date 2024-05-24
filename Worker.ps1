class Worker
{
    hidden [Service] $_service

    Worker([Service] $service)
    {
        $this._service = $service
    }

    [string] GetMessage([string] $name)
    {
        return $this._service.GetMessage($name)
    }
}

. "$PSScriptroot\Service.ps1"