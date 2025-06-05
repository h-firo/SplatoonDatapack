#ダメージ計算(通常はチャージ割合に応じて変化、フルチャージ時以外は100ダメージ以上が出ないように調整、40以下のダメージが出ないように調整)
$scoreboard players set @s damage $(Damage)
scoreboard players operation @s damage *= @s chargeDisplay
scoreboard players operation @s damage /= 100 num
execute if score @s damage matches 70.. if score @s chargeDisplay matches ..99 run scoreboard players operation @s damage /= 2 num
execute if score @s damage matches 70.. if score @s chargeDisplay matches ..99 run scoreboard players set @s damage 90
execute if score @s damage matches ..40 if score @s chargeDisplay matches ..99 run scoreboard players set @s damage 40

#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタsummon(チャージ割合によってsummonするアマスタの数が変化)
$execute if score @s chargeDisplay matches 100.. positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),speed:0.0022},attributes:[{id:"minecraft:gravity",base:0.2}]}
$execute if score @s chargeDisplay matches 70.. positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),speed:0.002},attributes:[{id:"minecraft:gravity",base:0.2}]}
$execute if score @s chargeDisplay matches 50.. positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),speed:0.0015},attributes:[{id:"minecraft:gravity",base:0.2}]}
$execute if score @s chargeDisplay matches 10.. positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),speed:0.001},attributes:[{id:"minecraft:gravity",base:0.2}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),speed:0.0005},attributes:[{id:"minecraft:gravity",base:0.2}]}

$execute as @e[type=armor_stand,tag=owner$(num)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num)] run scoreboard players operation @s damage = @p[level=$(num)] damage
$execute as @e[type=armor_stand,tag=owner$(num)] at @s run function core:weapons/chargers/shot_as with entity @s data
scoreboard players set @s delay 9
$scoreboard players set @s removeInk $(Ink)
scoreboard players operation @s removeInk *= @s chargeDisplay
scoreboard players operation @s removeInk /= 100 num
scoreboard players operation @s ink -= @s removeInk
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)

tag @e[type=armor_stand,tag=shot1] remove shot1

playsound entity.player.attack.weak master @a ~ ~ ~ 1 0.5
execute if score @s chargeDisplay matches ..99 run return fail
playsound item.shield.block master @a ~ ~ ~ 0.5 0.7
playsound item.shield.block master @a ~ ~ ~ 0.5 0.6
playsound item.shield.block master @a ~ ~ ~ 0.5 0.5