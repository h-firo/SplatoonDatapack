#結合状態を解除し、飲む人の場所へテレポート
$ride @n[type=item_display,tag=canDisplay$(num),tag=$(drinkNum)] dismount
$scoreboard players set @n[type=item_display,tag=canDisplay$(num),tag=$(drinkNum)] isHaveDrinker 1
$kill @n[type=item_display,tag=canDisplay$(num),tag=$(drinkNum)]
$scoreboard players set @n[tag=drinkPlayer$(num)] drinkTimer 340
scoreboard players remove @s drinkNum 1
$tag @n[tag=drinkPlayer$(num)] remove drinkPlayer$(num)