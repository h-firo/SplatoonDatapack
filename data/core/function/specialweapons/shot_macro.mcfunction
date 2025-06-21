execute if score @s preDelay matches 1.. run scoreboard players set @s rightHold 0
execute if score @s preDelay matches 1.. run scoreboard players remove @s preDelay 1
execute if score @s preDelay matches 1.. run return fail

#プレイヤーが所属しているteamと、プレイヤーが使うスペシャルを、shot関数にマクロとして渡す
$data modify storage special_temp: $(XpLevel) set from storage player: $(XpLevel).weapon
$data modify storage special_temp: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage special_temp: $(XpLevel).color set from storage player: $(XpLevel).color
$data modify storage special_temp: $(XpLevel).num set from storage player: $(XpLevel).num

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage special_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

$execute if data storage player: {$(XpLevel):{specialWeapon:trizooka}} if score @s shotDelay matches ..0 run \
function core:specialweapons/trizooka/shot with storage special_temp: $(XpLevel)