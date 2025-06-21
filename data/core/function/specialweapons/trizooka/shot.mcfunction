#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^-0.1 ^0.05 ^2.0 {Tags:["shot$(team)","trizooka","owner$(num)","sn$(shotNum)","1"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum)},attributes:[{id:"minecraft:gravity",base:0.14}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^-0.05 ^2.0 {Tags:["shot$(team)","trizooka","owner$(num)","sn$(shotNum)","2"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum)},attributes:[{id:"minecraft:gravity",base:0.14}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^0.1 ^0.05 ^2.0 {Tags:["shot$(team)","trizooka","owner$(num)","sn$(shotNum)","3"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum)},attributes:[{id:"minecraft:gravity",base:0.14}]}
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:specialweapons/trizooka/shot_as with storage special_temp: $(num)
#アイテムディスプレイ
$summon item_display ~ ~ ~ {Tags:["trizookaDisplay","1"],data:{sn:$(shotNum),team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}
$summon item_display ~ ~ ~ {Tags:["trizookaDisplay","2"],data:{sn:$(shotNum),team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}
$summon item_display ~ ~ ~ {Tags:["trizookaDisplay","3"],data:{sn:$(shotNum),team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}
playsound block.chain.place master @a ~ ~ ~ 0.6 0.2
playsound item.crossbow.shoot master @a ~ ~ ~ 0.9 0.7
playsound item.bucket.empty master @a ~ ~ ~ 0.8 0.7
scoreboard players set @s delay 9
scoreboard players set @s shotDelay 190

#使用回数増加
scoreboard players add @s specialUseCount 1

$tag @e[type=armor_stand,tag=sn$(shotNum)] remove sn$(shotNum)