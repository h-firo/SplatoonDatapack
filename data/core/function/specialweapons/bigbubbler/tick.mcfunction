#バリア展開
$execute if score @s useSpecialWeapon matches 334 at @n[type=item_display,tag=bigbubbler$(num)] run \
summon item_display ~ ~2 ~ {Tags:["bigbubbler_shield$(num)","object.bigbblber"],data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},item_display:"ground",teleport_duration:0,shadow_radius:3f,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.3f,0f],scale:[6f,6f,6]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["shield_$(color)"]},"item_model":bigbubbler}}}
$execute if score @s useSpecialWeapon matches 334 run scoreboard players set @n[type=item_display,tag=bigbubbler_shield$(num)] objDamage 3072
$scoreboard players remove @n[type=item_display,tag=bigbubbler_shield$(num)] objDamage 9

#消える直前
$execute if score @n[type=item_display,tag=bigbubbler_shield$(num)] objDamage matches ..0 run scoreboard players set @s useSpecialWeapon 0
$execute if score @s useSpecialWeapon matches ..1 at @n[type=item_display,tag=bigbubbler$(num)] run particle block{block_state:$(color)_stained_glass} ~ ~ ~ 3 3 3 0 100 force
$execute if score @s useSpecialWeapon matches ..1 at @n[type=item_display,tag=bigbubbler$(num)] run playsound block.glass.break master @a ~ ~ ~ 1
$execute if score @s useSpecialWeapon matches ..1 run kill @e[tag=bigbubbler_core$(num)]
$execute if score @s useSpecialWeapon matches ..1 run kill @e[tag=bigbubbler_shield$(num)]
$execute if score @s useSpecialWeapon matches ..1 run kill @e[tag=bigbubbler$(num)]

#何らかの動作
$execute as @e[tag=bigbubbler_shield$(num)] at @s positioned ~ ~3 ~ run function core:specialweapons/bigbubbler/particle with entity @s data
$execute as @e[tag=bigbubbler_core$(num)] at @s run function core:specialweapons/bigbubbler/weakpoint with entity @s data
$execute as @e[tag=bigbubbler_shield$(num)] at @s run function core:specialweapons/bigbubbler/guard with entity @s data