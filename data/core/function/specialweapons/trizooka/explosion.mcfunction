#爆発
particle explosion ~ ~ ~ 0 0 0 0 1
function core:subweapons/splashbomb/explosion with entity @s data
execute positioned ~ ~0.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~2 ~ run function core:subweapons/splashbomb/particle with entity @s data
$execute as @e[distance=..2,tag=player,tag=!trizooka$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 220
$execute as @e[distance=..2.5,tag=player,tag=!trizooka$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 53
$execute at @e[distance=..2.5,tag=player,tag=!trizooka$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add trizooka$(shotNum)