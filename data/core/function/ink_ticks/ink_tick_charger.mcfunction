#ダメージを持つ
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage

#塗り
$fill ~-1 ~-2 ~-1 ~1 ~ ~1 $(color)_concrete replace #core:can_inking
$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force
$execute if data entity @s {OnGround:true} run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking

#攻撃
function core:ink_damages/ink_damage_charger with entity @s data

execute if data entity @s {OnGround:true} run kill @s