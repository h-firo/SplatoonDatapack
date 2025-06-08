$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] if predicate core:is_onground run scoreboard players add @s explosionTimer 1
$execute if score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 1 at @s run playsound block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 1 2
$execute unless score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 20.. run return fail
execute at @s run function core:subweapons/splashbomb/explosion with entity @s data
$kill @n[type=armor_stand,tag=bomb$(bNum)]
kill @s