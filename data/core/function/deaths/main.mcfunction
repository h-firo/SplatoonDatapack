scoreboard players set @s health 0
execute if entity @s[tag=balloon] run return run function core:deaths/balloon
kill @s