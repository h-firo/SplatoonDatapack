#ダメージを持つ
$execute unless score @s damage matches 1.. run scoreboard players set @s damage $(damage)
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage


#塗り
$fill ~-0.1 ~-5 ~-0.1 ~0.1 ~ ~0.1 $(color)_concrete replace #core:can_inking
$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force
$execute if data entity @s {OnGround:true} run fill ~-0.5 ~-1 ~-0.5 ~0.5 ~1 ~0.5 $(color)_concrete replace #core:can_inking

#攻撃
$function core:damage {distance:1.7,num:$(shotNum),team:$(team),damage:$(damage),objDamage:100,volume:1,objNum:$(objNum),owner:$(owner)}

execute if data entity @s {OnGround:true} run kill @s