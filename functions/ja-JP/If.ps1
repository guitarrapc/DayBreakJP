#if -non pipeline simple if
function もしも 
{
    [CmdletBinding()]
    param
    (
        [parameter(
            Mandatory = 1,
            Position  = 0)]
        $条件,

        [parameter(
            Mandatory = 1,
            Position  = 1)]
        $正しい場合,

        [parameter(
            Mandatory = 0,
            Position  = 2)]
        $違う場合
    )

    if (!($条件 -is [bool] -or $条件 -is [scriptblock] ))
    {
        throw 'Only scriptblocks or booleans for the condition もしも'
    }

    if ($条件 -is [scriptblock])
    {
        $条件 = & $条件
    } 

    if($条件)
    { 
        if ($正しい場合 -is [scriptblock])
        {
            & $正しい場合
        }
        else
        {
            $正しい場合
        }
    } 
    else
    {
        if($違う場合 -is [scriptblock])
        {
            & $違う場合
        }
        else
        {
            $違う場合
        }
    } 
}

#endregion
