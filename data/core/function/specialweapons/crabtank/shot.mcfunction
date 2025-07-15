#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","crabtank","owner$(num)","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damage:32},attributes:[{id:"minecraft:gravity",base:0.14}]}
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:specialweapons/crabtank/shot_as with storage special_temp: $(num)
$data merge entity @n[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] {data:{objNum:-1}}
#アイテムディスプレイ
playsound block.stone.place master @a ~ ~ ~ 0.5 1
playsound item.bucket.empty master @a ~ ~ ~ 0.4 1.5
scoreboard players set @s delay 9
$scoreboard players set @s shotDelay $(fireRate)
execute if score @s shotFireRate matches 2.. run scoreboard players remove @s shotFireRate 10

$tag @e[type=armor_stand,tag=sn$(shotNum)] remove sn$(shotNum)