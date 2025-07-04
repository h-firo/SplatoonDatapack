#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

playsound entity.wind_charge.throw master @a ~ ~ ~ 1 0.5

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["bomb$(bombNum)","bomb","owner$(num)"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(num),bombNum:$(bombNum),type:"splashwall"},attributes:[{id:"minecraft:gravity",base:0.1}]}
rotate @n[type=armor_stand] facing entity @p
#$rotate @n[type=armor_stand,tag=bomb$(bombNum)] facing entity @s
$summon item_display ~ ~ ~ {Tags:["bombDisplay","bn$(bombNum)"],data:{bNum:$(bombNum),team:$(team),owner:$(num),color:$(color),type:"splashwall"},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1.5f,0f],scale:[1.8,1.8,1.8]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]}}}}
#rotate @n[type=item_display] facing entity @p


scoreboard players remove @s ink 600

#as
$execute as @e[type=armor_stand,tag=bomb$(bombNum)] at @s run function core:subweapons/splashwall/bomb_as {num:$(num)}