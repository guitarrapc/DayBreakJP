#region comparatives
#this will have lots of comparisions build in eventually.

function 比較
{
    [CmdletBinding()]
    param
    (
        [parameter(
            Mandatory = 1,
            Position  = 0)]
        $要素,

        [parameter(
            Mandatory = 1,
            Position  = 1)]
        $対象,

        [Parameter(ParameterSetName='等しい')]
        [switch]
        $等しい,

        [Parameter(ParameterSetName='等しくない')]
        [switch]
        $等しくない,

        [Parameter(ParameterSetName='大きい')]
        [switch]
        $大きい,

        [Parameter(ParameterSetName='小さい')]
        [switch]
        $小さい,

        [Parameter(ParameterSetName='以上')]
        [switch]
        $以上,

        [Parameter(ParameterSetName='以下')]
        [switch]
        $以下,

        [Parameter(ParameterSetName='含む')]
        [switch]
        $含む,

        [Parameter(ParameterSetName='含まない')]
        [switch]
        $含まない,

        [Parameter(ParameterSetName='含まれる')]
        [switch]
        $含まれる,

        [Parameter(ParameterSetName='含まれない')]
        [switch]
        $含まれない
    )
    
    $commonKeys = @(
        'Verbose',
        'Debug',
        'ErrorAction',
        'ErrorVariable',
        'WarningAction',
        'WarningVariable',
        'OutBuffer',
        'PipelineVariable',
        'OutVariable'
    )

    $functionKeys = @(
        '要素',
        '対象'
    )

    $compare = $PSBoundParameters.Keys | where {$_ -notin $commonKeys} | where {$_ -notin $functionKeys}
    Write-Verbose -Message ("'{0}' で比較します。" -f $compare)

    switch ($compare)
    {
        '等しい'     {$要素 -eq $対象}
        '等しくない'  {$要素 -ne $対象}
        '大きい'     {$要素 -gt $対象}
        '小さい'     {$要素 -lt $対象}
        '以上'      {$要素 -ge $対象}
        '以下'      {$要素 -le $対象}
        '含む'      {$要素 -contains $対象}
        '含まない'   {$要素 -notcontains $対象}
        '含まれる'   {$要素 -in $対象}
        '含まれない' {$要素 -notin $対象}
        default    {throw 'other comparisions not yet supported. 他の比較演算子は実装されてないもん。'}
    }
}
#endregion
