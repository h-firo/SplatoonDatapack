#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 310
scoreboard players set @s specialPoint 0

#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#エナジースタンドを投げる
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["stand$(num)"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},attributes:[{id:"minecraft:gravity",base:0.1}]}
$summon item_display ~ ~ ~ {Tags:["standDisplay$(num)"],data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.5f,0f],scale:[1,1,1]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"tacticooler"}}}
$execute as @e[type=armor_stand,tag=stand$(num)] at @s run function core:specialweapons/tacticooler/throw_stand with entity @s data

#前隙
scoreboard players set @s preDelay 2

playsound item.armor.equip_diamond master @a ~ ~ ~ 1.5 1