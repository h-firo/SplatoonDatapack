$data merge entity @n[tag=crabtankDisplay,nbt={data:{owner:$(XpLevel)}}] \
{item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["cube"]},"item_model":crabtank}}}
attribute @s movement_speed modifier remove crabtank_move
attribute @s movement_speed modifier add crabtank_move -0.04 add_value
clear @s player_head
scoreboard players set @s isCube 1