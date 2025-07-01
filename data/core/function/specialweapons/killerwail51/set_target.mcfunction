playsound block.dispenser.fail master @s ~ ~ ~ 1 1.5
$function core:specialweapons/killerwail51/target_set with storage player: $(num)
$execute unless entity @e[tag=killerwail$(num)_target] run tag @n[tag=player,tag=killerwaitTarget$(num)] add killerwail$(num)_target
