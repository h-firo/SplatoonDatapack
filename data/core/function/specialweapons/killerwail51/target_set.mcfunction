#ターゲットにしているプレイヤーがいない場合、周辺10ブロック以内にターゲットにできるプレイヤーを探す
$execute unless entity @e[tag=player,tag=killerwail$(num)_target] as @n[tag=player,distance=..10,tag=!killerwail$(num)_target,tag=!alreadyTarget$(num)] unless score @s team matches $(team) run tag @s add killerwail$(num)_target
#レーザーをのばす
$execute positioned ^ ^ ^0.5 if entity @p[level=$(num),distance=..100] run function core:specialweapons/killerwail51/target_set with storage player: $(num)