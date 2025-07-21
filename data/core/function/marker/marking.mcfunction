$execute if entity @s[tag=!markingInit] run function core:marker/init {num:$(XpLevel)}
$tp @n[type=item_display,tag=markerDisplay$(XpLevel)] ~ ~1.6 ~

scoreboard players add @s markingTimer 1
execute if score @s markingTimer matches ..300 run return fail
scoreboard players set @s markingTimer 0
tag @s remove Marking
tag @s remove Mark0
tag @s remove Mark1
tag @s remove Mark2
tag @s remove Mark3
tag @s remove Mark4
tag @s remove markingInit
$kill @n[type=item_display,tag=markerDisplay$(XpLevel)]