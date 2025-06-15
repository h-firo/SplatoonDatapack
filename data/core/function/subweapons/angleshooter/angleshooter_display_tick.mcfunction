$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] run scoreboard players add @s explosionTimer 1
$execute unless score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 5.. run return fail
$kill @n[type=armor_stand,tag=bomb$(bNum)]
kill @s