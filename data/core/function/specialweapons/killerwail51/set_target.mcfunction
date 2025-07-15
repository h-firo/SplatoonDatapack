playsound block.dispenser.fail master @s ~ ~ ~ 1 1.5
$function core:specialweapons/killerwail51/target_set with storage player: $(num)
#該当者が存在しなかった場合、既にロックオン済みのプレイヤーをターゲットにする
$execute unless entity @e[tag=killerwail$(num)_target] run tag @n[tag=player,tag=alreadyTarget$(num)] add killerwail$(num)_target

#演出
$execute as @n[tag=player,tag=killerwail$(num)_target] at @s run particle dust_pillar{block_state:{Name:"$(color)_concrete"}} ~ ~ ~ 0.5 0.5 0.5 0 100 force @a[level=$(num)]
