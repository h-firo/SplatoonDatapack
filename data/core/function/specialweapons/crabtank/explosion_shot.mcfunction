#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^0.05 ^2.0 {Tags:["shot$(team)","crabtank_explshot","owner$(num)","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum)},attributes:[{id:"minecraft:gravity",base:0.14}]}
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:specialweapons/crabtank/explshot_as with storage special_temp: $(num)
$data merge entity @n[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] {data:{objNum:-1}}
#アイテムディスプレイ
$summon item_display ~ ~ ~ {Tags:["explshotDisplay"],data:{sn:$(shotNum),team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}
playsound item.crossbow.shoot master @a ~ ~ ~ 0.9 0.7
playsound item.bucket.empty master @a ~ ~ ~ 0.8 0.7
scoreboard players set @s delay 9
scoreboard players set @s shotDelay 250

item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"none",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.crabtank},custom_model_data={strings:["crabtank"]}] 1

$tag @e[type=armor_stand,tag=sn$(shotNum)] remove sn$(shotNum)