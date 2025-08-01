#バルーン出現場所
execute unless entity @e[type=piglin,tag=balloon,distance=..3] run kill @e[type=text_display,distance=..4]
execute unless entity @e[type=piglin,tag=balloon,distance=..3] if entity @a[distance=..5] positioned ~ ~ ~ run function lobby:spawn
execute if entity @e[type=piglin,tag=death,tag=balloon,dy=2] run scoreboard players add @n[type=piglin,tag=death,tag=balloon,dy=2] spawnTime 1
execute as @n[type=piglin,tag=balloon,dy=2] store result entity @s data.health int 1 run scoreboard players get @s health
execute as @n[type=piglin,tag=balloon,dy=2] at @s run function lobby:changehv with entity @s data
execute if score @n[type=piglin,tag=balloon,dy=2] spawnTime matches ..40 run return fail
scoreboard players set @e[type=piglin,tag=death,tag=balloon,dy=2] spawnTime 0
execute as @n[type=piglin,tag=balloon,dy=2] run function lobby:respawn