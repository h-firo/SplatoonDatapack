#プレイヤーが所属しているteamと、プレイヤーが持っている武器を、shot関数にマクロとして渡す
$data modify storage shot_temp: $(XpLevel) set from storage player: $(XpLevel).weapon
$data modify storage shot_temp: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage shot_temp: $(num).color set from storage player: $(num).color
$data modify storage shot_temp: $(XpLevel).num set from storage player: $(XpLevel).num

#shotNumの増加
scoreboard players add num shotNum 1
execute store result storage shot_temp: 1.shotNum int 1 run scoreboard players get num shotNum

$function core:weapons/shooters/shot with storage shot_temp: $(XpLevel)