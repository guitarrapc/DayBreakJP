#region keywords, language structure alternatives
$Script:DayBreakJP = @{}
$DayBreakJP.Name        = 'DayBreakJP'
$DayBreakJP.currentCulture = (Get-Culture).Name

$DayBreakJP.modulePath  = Split-Path -parent $MyInvocation.MyCommand.Definition
$DayBreakJP.helpersPath = '\functions\{0}\*.ps1' -f $DayBreakJP.currentCulture
$functionPath           = Join-Path $DayBreakJP.modulePath $DayBreakJP.helpersPath

$DayBreakJP.WelcomeMessage = {
    Write-Host -Object "Welcome to DayBreakJP. A PowerShell Module adding Japanese language 'keywords' `
    , functions and Cmdlets to PowerShell. Imspired DayBareak https://github.com/klumsy/DayBreak-ChinesePowerShell`
    日本語PowerShell環境 NewDays へようこそ。" -ForegroundColor Yellow
}
#end

# -- Export Modules when loading this module -- #
# grab functions from files
if (Test-Path $functionPath)
{
    Get-ChildItem ($functionPath) -Recurse `
    | where { -not ($_.FullName.Contains('.Tests.')) } `
    | where Extension -eq '.ps1' `
    | % {. $_.FullName}

    Export-ModuleMember `
        -Function `
            * `
        -Variable `
            * `
        -Alias *

    & $DayBreakJP.WelcomeMessage
}
else
{
    Write-Warning -Message ("As your current Culture is '{0}', no functions from module '{1}' will be import and exported." -f $DayBreakJP.currentCulture, $DayBreakJP.Name)
}