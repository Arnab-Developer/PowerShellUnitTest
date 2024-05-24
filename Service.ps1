class Service
{
    [string] GetMessage([string] $name)
    {
        return "Hello $($name)"
    }
}