$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] if score @s isSticking matches 1 run scoreboard players add @s explosionTimer 1
$execute if score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 19 at @s run playsound block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 1 2
$execute unless score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 40.. run return fail
$execute as @n[type=armor_stand,tag=bomb$(bNum)] at @s run function core:subweapons/suctionbomb/explosion with entity @s data
$kill @n[type=armor_stand,tag=bomb$(bNum)]
kill @s