function core:damage {distance:1.7,num:1,team:1,damae:1,objDamage:1,volume:1}

#$execute as @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health $(atDamage)
#$execute as @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
#$execute as @e[distance=..1.7,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add attack$(shotNum)