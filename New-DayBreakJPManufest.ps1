$script:module = "DayBreakJP"
$script:moduleVersion = "0.0.1"
$script:description = "PowerShell Syntax for Japanese. Inspired with DayBreak (https://github.com/klumsy/DayBreak-ChinesePowerShell)";
$script:copyright = "19/April/2014 -"
$script:RequiredModules = @()
$script:clrVersion = "4.0.0.0" # .NET 4.0 with StandAlone Installer "4.0.30319.1008" or "4.0.30319.1" , "4.0.30319.17929" (Win8/2012)
$script:ExportPath = Split-Path $PSCommandPath -Parent

$script:functionToExport = @(
    "*"
)

$script:variableToExport = "NewDays"
$script:AliasesToExport = @(
    "*"
)

$script:moduleManufest = @{
    Path = "{0}\{1}.psd1" -f $ExportPath, $module
    Author = "guitarrapc";
    CompanyName = "guitarrapc"
    Copyright = ""; 
    ModuleVersion = $moduleVersion
    Description = $description
    PowerShellVersion = "3.0";
    DotNetFrameworkVersion = "4.0";
    ClrVersion = $clrVersion;
    RequiredModules = $RequiredModules;
    NestedModules = "$module.psm1";
    CmdletsToExport = "*";
    FunctionsToExport = $functionToExport
    VariablesToExport = $variableToExport;
    AliasesToExport = $AliasesToExport;
}

New-ModuleManifest @moduleManufest