#delay処理
execute unless score @s delay matches 0 run scoreboard players remove @s delay 1
execute if score @s shotDelay matches 1.. run scoreboard players remove @s shotDelay 10
execute unless score @s sprintDelay matches 0 run scoreboard players remove @s sprintDelay 1
execute if score @s delay matches 0 run scoreboard players set @s accuracy 0
$execute if score @s preDelay matches 0 if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
execute unless entity @s[tag=Click] if score @s rightHold matches 1.. run function core:weapons/chargers/is_charger with entity @s
execute unless entity @s[tag=Click] run scoreboard players set @s rightHold 0
execute unless entity @s[tag=Click] run scoreboard players set @s charge 0
execute unless entity @s[tag=Click] run scoreboard players set @s chargeDisplay 0

#射撃中に移動速度が遅くなることの抑制
attribute @s movement_speed modifier remove shot_move
$function core:shot_move with storage shot_temp: $(XpLevel)
execute if score @s ink matches ..0 run attribute @s movement_speed modifier remove shot_move

#ローラーの塗り
$execute if score @s rightHold matches 10.. if predicate core:is_moving if score @s ink matches 1.. run function core:weapons/rollers/rolling with storage shot_temp: $(XpLevel)

#壁のぼりの処理
$function core:actions/wall_climb with storage player: $(XpLevel)

#ジャンプブレ
$function core:air_blur with storage shot_temp: $(XpLevel)

#インク量
execute if score @s ink matches ..0 run scoreboard players set @s ink 0
scoreboard players operation @s inkTo100 = @s ink
scoreboard players operation @s inkTo100 /= 10 num
$execute store result storage player: $(XpLevel).ink int 1 run scoreboard players get @s inkTo100

#イカ移動の処理
$function core:actions/sprint with storage player: $(XpLevel)