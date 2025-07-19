#くっつき動作
data merge entity @s {NoAI:true,attributes:[{id:"gravity",base:0}]}
$execute if block ~ ~0.3 ~ #core:can_inking run setblock ~ ~0.3 ~ $(color)_concrete
$execute if block ~ ~-0.3 ~ #core:can_inking run setblock ~ ~-0.3 ~ $(color)_concrete
data merge entity @s {Motion:[0.0,0.0,0.0]}
scoreboard players set @s isSticking 1

scoreboard players set @s paintRate 10