scoreboard players set @s health 0
playsound block.glass.break master @a ~ ~ ~ 0.6
playsound item.bucket.empty master @a ~ ~ ~ 1 1.5
execute if entity @s[tag=balloon] run return run function core:deaths/balloon
scoreboard players set @s health 100
kill @s