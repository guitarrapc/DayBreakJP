DayBreakJP
==========

An experimental programming language built onto of PowerShell, using Japanese rather than English as its basis. Inspired by DayBreak-ChinesePowerShell https://github.com/klumsy/DayBreak-ChinesePowerShell

# Sample for CompareOperators and if

Original

```PowerShell
$hisAge = 25
$herAge = 30
if($hisAge -le $herAge)
{
	"same age"
}
else
{
	"not same age"
}
```

日本語PowerShell
```PowerShell
$あの人の年 = 25
$その人の年 = 30
もしも {比較 -要素 $あの人の年 -対象 $その人の年 -小さい} `-正しい場合 "同い年だよ" -違う場合 "年ちがっちゃった....."
```

# Comapre Operators supported

|Original|Japanese|Status|
|----|----|----|
|eq          |等しい    |done|
|ne          |等しくない  |done|
|gt          |大きい    |done|
|lt          |小さい    |done|
|ge          |以上     |done|
|le          |以下     |done|
|contains    |含む     |done|
|notcontains |含まない  |done|
|in          |含まれる  |done|
|notin       |含まれない |done|
|ceq         |----    |not yet|
|cne         |----    |not yet|
|cgt         |----    |not yet|
|clt         |----    |not yet|
|cge         |----    |not yet|
|cle         |----    |not yet|
|ccontains   |----    |not yet|
|cnotcontains|----    |not yet|
|cin         |----    |not yet|
|cnotin      |----    |not yet|

# if Operator supported

|Original|Japanese|Status|
|----|----|----|
|if          |もしも     |done|
|true        |正しい場合 |done|
|false       |違う場合   |done|

# Number Supported

|Original|Japanese|Status|
|----|----|----|
|0|零|done|
|1|一|done|
|2|二|done|
|3|三|done|
|4|四|done|
|5|五|done|
|6|六|done|
|7|七|done|
|8|八|done|
|9|九|done|

# Cmdlet Supported

|Original|Japanese|Status|
|----|----|----|
|Write-Host|表示|in progress|
|others    |----|not yet|
