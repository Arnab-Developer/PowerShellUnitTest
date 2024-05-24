$config = New-PesterConfiguration
$config.CodeCoverage.Enabled = $true

Invoke-Pester -Configuration $config