#くっつき動作
playsound block.slime_block.hit master @a ~ ~ ~ 1 1
data merge entity @s {NoAI:true,attributes:[{id:"gravity",base:0}]}
data merge entity @s {Motion:[0.0,0.0,0.0]}
scoreboard players set @s isSticking 1