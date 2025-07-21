particle dust{color:[0.200,0.000,1.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 0 1 force
scoreboard players add @s explosionTimer 1
#攻撃
$execute if score @s explosionTimer matches ..5 as @e[distance=..3,tag=player,tag=!asAttack$(bombNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) as @a[level=$(owner)] at @s run playsound minecraft:entity.player.attack.crit master @s ~ ~ ~ 1
$execute if score @s explosionTimer matches ..5 as @e[distance=..3,tag=player,tag=!asAttack$(bombNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 40
$execute if score @s explosionTimer matches ..5 as @e[distance=..3,tag=player,tag=!asAttack$(bombNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run tag @s add asAttack$(bombNum)

#マーキング
$execute if score @s explosionTimer matches ..5 as @e[distance=..3,tag=player,tag=asAttack$(bombNum)] run tag @s add Marking
$execute if score @s explosionTimer matches ..5 as @e[distance=..3,tag=player,tag=asAttack$(bombNum),tag=Marking] run tag @s add Mark$(team)
execute unless score @s explosionTimer matches 35.. run return fail
kill @s
#execute if block ^ ^ ^0.7 #core:can_sticking run tp @s ^ ^ ^ facing ^ ^ ^-0.2