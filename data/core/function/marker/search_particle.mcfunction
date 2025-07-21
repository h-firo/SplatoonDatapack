particle current_down ~ ~0.5 ~ 0 0 0 0 1 force @s
$execute unless entity @n[tag=player,tag=Mark$(team),tag=!alreadySearch,distance=..3] positioned ^ ^ ^0.5 run function core:marker/search_particle with storage player: $(num)
$execute as @n[tag=player,tag=Mark$(team),tag=!alreadySearch,distance=..3] run tag @s add alreadySearch
$execute if entity @e[tag=player,tag=Mark$(team),tag=!alreadySearch,distance=4..] facing entity @n[tag=player,tag=Mark$(team),tag=!alreadySearch,distance=4..] feet positioned as @s run function core:marker/search_particle with storage player: $(num)