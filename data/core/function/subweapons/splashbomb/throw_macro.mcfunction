#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["bomb$(bombNum)","bomb","owner$(num)"],Invisible:true,Silent:true,data:{team:0,owner:$(num),bombNum:$(bombNum)},attributes:[{id:"minecraft:gravity",base:0.08}]}
summon item_display ~ ~ ~ {Tags:["bombDisplay"],item_display:"ground",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:nether_quartz_ore",count:1}}

#as
execute as @e[type=armor_stand,tag=bomb] at @s run function core:subweapons/splashbomb/bomb_as {num:1,Speed:0.1}