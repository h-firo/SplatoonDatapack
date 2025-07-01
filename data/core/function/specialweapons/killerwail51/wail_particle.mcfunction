particle dust{color:[0,0,1],scale:1} ~ ~ ~ 0 0 0 0 1 force @a
$execute as @e[tag=player,distance=..0.3,tag=!killerwail$(num)] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 0.1
$execute as @e[tag=player,distance=..0.3,tag=!killerwail$(num)] unless score @s team matches $(team) run scoreboard players remove @s health 2
$execute as @e[tag=player,distance=..0.3,tag=!killerwail$(num)] unless score @s team matches $(team) run tag @s add killerwail$(num)
$execute positioned ^ ^ ^1 if entity @p[level=$(num),distance=..100] run function core:specialweapons/killerwail51/wail_particle with storage player: $(num)