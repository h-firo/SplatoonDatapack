$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] run scoreboard players add @s explosionTimer 1
$execute if score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 50 at @s run playsound block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 1 2
$execute unless score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 70.. run return fail
execute at @s run function core:subweapons/curingbomb/explosion with entity @s data
$kill @n[type=armor_stand,tag=bomb$(bNum)]
kill @s