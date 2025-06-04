#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT)},attributes:[{id:"minecraft:gravity",base:$(Gravity)}]}
$execute as @n[type=armor_stand,tag=owner$(num)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @n[type=armor_stand,tag=owner$(num)] at @s run function core:weapons/shooters/shot_as with storage shot_temp: $(num)
playsound block.stone.place master @a ~ ~ ~ 0.8 1.5
scoreboard players set @s delay 9
$scoreboard players remove @s ink $(Ink)
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)

tag @e[type=armor_stand,tag=shot1] remove shot1