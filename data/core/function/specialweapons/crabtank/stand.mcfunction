$data merge entity @n[tag=crabtankDisplay,nbt={data:{owner:$(XpLevel)}}] \
{item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["stand"]},"item_model":crabtank}}}
$item replace entity @s armor.head with player_head[profile={id:$(UUID)}]
attribute @s movement_speed modifier remove crabtank_move
attribute @s movement_speed modifier add crabtank_move -0.05 add_value
scoreboard players set @s isCube 0