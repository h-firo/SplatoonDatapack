#ダメージを持つ
$execute unless score @s damage matches 1.. run scoreboard players set @s damage $(damage)
$execute if score @s damage matches 1.. run scoreboard players remove @s damage $(damageAT)
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage

#スペシャルポイント処理
$function core:actions/add_specialpoint {fx:-0.3,fy:-5,fz:-0.3,tx:0.3,ty:0,tz:0.3,color:"$(color)",owner:$(owner)}

#塗り
$fill ~-0.3 ~-5 ~-0.3 ~0.3 ~ ~0.3 $(color)_concrete replace #core:can_inking
$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force
$execute if data entity @s {OnGround:true} run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking

#攻撃
function core:ink_damages/ink_damage_general with entity @s data

execute if data entity @s {OnGround:true} run kill @s