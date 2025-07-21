#爆発
particle explosion ~ ~ ~ 0 0 0 0 1
function core:subweapons/splashbomb/explosion with entity @s data
execute positioned ~ ~0.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~2 ~ run function core:subweapons/splashbomb/particle with entity @s data

#ダメージ処理
$function core:damage {distance:2,num:$(shotNum),team:$(team),damage:220,objDamage:1320,volume:1,owner:$(owner),objNum:$(objNum)}
$function core:damage {distance:2.5,num:$(shotNum),team:$(team),damage:53,objDamage:318,volume:1,owner:$(owner),objNum:$(objNum)}

#旧処理
#$execute as @e[distance=..2,tag=player,tag=!trizooka$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 220
#$execute as @e[distance=..2.5,tag=player,tag=!trizooka$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 53
#$execute at @e[distance=..2.5,tag=player,tag=!trizooka$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
#$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add trizooka$(shotNum)