playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
particle explosion ~ ~ ~ 0 0 0 0 1
function core:subweapons/suctionbomb/particle with entity @s data
$fill ~-2.5 ~-1 ~-3 ~3 ~2 ~3 $(color)_concrete replace #core:can_inking
execute positioned ~ ~0.5 ~ run function core:subweapons/suctionbomb/particle with entity @s data
execute positioned ~ ~1 ~ run function core:subweapons/suctionbomb/particle with entity @s data
execute positioned ~ ~1.5 ~ run function core:subweapons/suctionbomb/particle with entity @s data
execute positioned ~ ~2 ~ run function core:subweapons/suctionbomb/particle with entity @s data
$execute as @e[distance=..3,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 180
$execute as @e[distance=..3.8,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 30
$execute at @e[distance=..3.8,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
$execute as @e[distance=..3.8,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add bomb$(bNum)