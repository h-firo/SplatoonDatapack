execute if predicate core:is_onground run scoreboard players add @s explosionTimer 1
execute if score @s explosionTimer matches ..70 run particle dust{color:[1,1,1],scale:0.6} ~ ~0.3 ~ 0.1 0 0.1 0 1
execute if score @s explosionTimer matches 71..100 run particle dust{color:[1,0.7,0.7],scale:0.6} ~ ~0.3 ~ 0.1 0 0.1 0 1
execute if score @s explosionTimer matches 101.. run particle dust{color:[1,0.5,0.5],scale:0.6} ~ ~0.3 ~ 0.1 0 0.1 0 1
execute if score @s explosionTimer matches 1 at @s run playsound block.piston.extend master @a ~ ~ ~ 1 0.6
$execute if entity @e[tag=ink,distance=..2.5,tag=!shot$(team)] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1
$execute if entity @e[tag=ink,distance=..2.5,tag=!shot$(team)] run scoreboard players add @s explosionTimer 2
$execute as @e[tag=ink,distance=..2.5,tag=!shot$(team)] run kill @s
execute unless score @s explosionTimer matches 133.. run return fail
playsound block.vault.break master @a ~ ~ ~ 0.8
kill @n[type=item_display]
kill @s