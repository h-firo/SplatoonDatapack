#ホットバーロック
function core:inventory_lock/tick with entity @s


#delay処理
execute unless score @s delay matches 0 run scoreboard players remove @s delay 1
execute if score @s drinkTimer matches 340 run function core:actions/drink
execute if score @s drinkTimer matches 1.. run particle trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute if score @s drinkTimer matches 1 run function core:actions/drink_remove
execute unless score @s drinkTimer matches 0 run scoreboard players remove @s drinkTimer 1
$execute if score @s useSpecialWeapon matches 0.. run function core:specialweapons/use_tick with storage player: $(XpLevel)
execute if score @s shotDelay matches 1.. run scoreboard players remove @s shotDelay 10
execute unless score @s sprintDelay matches 0 run scoreboard players remove @s sprintDelay 1
execute if score @s delay matches 0 run scoreboard players set @s accuracy 0
$execute unless score @s useSpecialWeapon matches 0.. if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
execute unless entity @s[tag=Click] if score @s rightHold matches 1.. run function core:weapons/chargers/is_charger with entity @s
execute unless entity @s[tag=Click] run scoreboard players set @s rightHold 0
execute unless entity @s[tag=Click] run scoreboard players set @s charge 0
execute unless entity @s[tag=Click] run scoreboard players set @s chargeDisplay 0

#スペシャルゲージの更新
function core:specialbar with entity @s

#スペシャル発動
$execute if score @s rightClick matches 1 if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={item:"specialUse"}] run function core:specialweapons/use with storage player: $(XpLevel)

#射撃中に移動速度が遅くなることの抑制
attribute @s movement_speed modifier remove shot_move
$execute if items entity @s weapon.mainhand emerald[custom_data={item:"weapon"}] run function core:shot_move with storage shot_temp: $(XpLevel)
execute if score @s ink matches ..0 run attribute @s movement_speed modifier remove shot_move

#ローラーの塗り
$execute if score @s rightHold matches 10.. if predicate core:is_moving if score @s ink matches 1.. run function core:weapons/rollers/rolling with storage shot_temp: $(XpLevel)

#壁のぼりの処理
$function core:actions/wall_climb with storage player: $(XpLevel)

#ジャンプブレ
$function core:air_blur with storage shot_temp: $(XpLevel)

#マーキング
execute if entity @s[tag=Marking] run function core:marker/marking with entity @s

#マーキング矢印
$function core:marker/search with storage player: $(XpLevel)

#インク量
execute if score @s ink matches ..0 run scoreboard players set @s ink 0
scoreboard players operation @s inkTo100 = @s ink
scoreboard players operation @s inkTo100 /= 10 num
$execute store result storage player: $(XpLevel).ink int 1 run scoreboard players get @s inkTo100

#イカ移動の処理
$function core:actions/sprint with storage player: $(XpLevel)

$tag @e[tag=player] remove killerwail$(XpLevel)