#マーク対象の敵がいたら、その敵に向けて線を出す
$execute unless entity @e[tag=player,tag=Mark$(team),tag=!alreadySearch] run return fail
$execute facing entity @n[tag=player,tag=Mark$(team),tag=!alreadySearch] feet positioned ~ ~ ~ run function core:marker/search_particle with storage player: $(num)