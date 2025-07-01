scoreboard players remove @s killerwailTargetDelay 1
$execute if entity @e[tag=player,tag=killerwailTarget$(owner)_$(tnum)] run function core:specialweapons/killerwail51/wail_particle with storage player: $(owner)
execute if score @s killerwailTargetDelay matches 1.. run return fail
$execute if entity @e[tag=player,tag=killerwailTarget$(owner)_$(tnum)] run rotate @s facing entity @n[tag=player,tag=killerwailTarget$(owner)_$(tnum)]
$execute unless entity @e[tag=player,tag=killerwailTarget$(owner)_$(tnum)] run rotate @s facing entity @p[level=$(owner)]
scoreboard players set @s killerwailTargetDelay 3