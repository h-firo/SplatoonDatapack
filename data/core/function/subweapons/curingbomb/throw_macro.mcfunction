#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

playsound entity.wind_charge.throw master @a ~ ~ ~ 1 0.5

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["bomb$(bombNum)","bomb","owner$(num)"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),bombNum:$(bombNum),type:"curingbomb",color:$(color)},attributes:[{id:"minecraft:gravity",base:0.08}]}
$execute as @e[type=armor_stand,tag=bomb$(bombNum)] at @s rotated as @a[level=$(num)] run tp @s ~ ~ ~ ~ 0
$summon item_display ~ ~ ~ {Tags:["bombDisplay"],data:{bNum:$(bombNum),team:$(team),owner:$(num),color:$(color),type:"curingbomb"},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[1f,1f,1f]},\
                            item:{id:"minecraft:feather",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]}}}}

scoreboard players remove @s ink 650