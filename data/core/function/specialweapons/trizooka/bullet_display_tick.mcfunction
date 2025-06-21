execute unless entity @e[type=armor_stand,tag=trizooka,tag=1] if entity @s[tag=1] run kill @s
execute unless entity @e[type=armor_stand,tag=trizooka,tag=2] if entity @s[tag=2] run kill @s
execute unless entity @e[type=armor_stand,tag=trizooka,tag=3] if entity @s[tag=3] run kill @s

execute if entity @s[tag=1] run tp @s @n[type=armor_stand,tag=trizooka,tag=1]
execute if entity @s[tag=2] run tp @s @n[type=armor_stand,tag=trizooka,tag=2]
execute if entity @s[tag=3] run tp @s @n[type=armor_stand,tag=trizooka,tag=3]