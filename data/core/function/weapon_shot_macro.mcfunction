execute if score @s preDelay matches 1.. run scoreboard players set @s rightHold 0
execute if score @s preDelay matches 1.. run scoreboard players remove @s preDelay 1
execute if score @s preDelay matches 1.. run return fail

#プレイヤーが所属しているteamと、プレイヤーが持っている武器を、shot関数にマクロとして渡す
$data modify storage shot_temp: $(XpLevel) set from storage player: $(XpLevel).weapon
$data modify storage shot_temp: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage shot_temp: $(XpLevel).color set from storage player: $(XpLevel).color
$data modify storage shot_temp: $(XpLevel).num set from storage player: $(XpLevel).num
$data modify storage shot_temp: $(XpLevel).category set from storage player: $(XpLevel).category

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

$execute if data storage player: {$(XpLevel):{category:shooter}} if score @s shotDelay matches ..0 if score @s ink matches 1.. run \
function core:weapons/shooters/shot_macro with entity @s

$execute if data storage player: {$(XpLevel):{category:roller}} if score @s shotDelay matches ..0 if score @s ink matches 1.. if score @s rightHold matches 0 run \
function core:weapons/rollers/shot_macro with storage shot_temp: $(XpLevel)

$execute if data storage player: {$(XpLevel):{category:charger}} if score @s shotDelay matches ..0 if score @s ink matches 1.. run \
function core:weapons/chargers/charge with storage shot_temp: $(XpLevel)