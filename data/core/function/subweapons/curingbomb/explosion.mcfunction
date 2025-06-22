#演出
playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
particle explosion ~ ~ ~ 0 0 0 0 1
function core:subweapons/curingbomb/particle with entity @s data
execute positioned ~ ~0.5 ~ run function core:subweapons/curingbomb/particle with entity @s data
execute positioned ~ ~1 ~ run function core:subweapons/curingbomb/particle with entity @s data
execute positioned ~ ~1.5 ~ run function core:subweapons/curingbomb/particle with entity @s data
execute positioned ~ ~2 ~ run function core:subweapons/curingbomb/particle with entity @s data

#塗り
$fill ~-1.2 ~-1 ~-1.2 ~1.2 ~2 ~1.2 $(color)_concrete replace #core:can_inking
$scoreboard players add @a[level=$(owner)] specialPoint 15

#攻撃
$execute as @e[distance=..1.5,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 180
$execute as @e[distance=..2,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 30
$execute at @e[distance=..2,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
$execute as @e[distance=..2,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add bomb$(bNum)