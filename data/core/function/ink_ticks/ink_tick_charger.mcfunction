#ダメージを持つ
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage

#オブジェクト紐づけを初期化
execute unless data entity @s data.objNum run data merge entity @s {data:{objNum:-1}}

#スペシャルポイント処理
$function core:actions/add_specialpoint {fx:-1,fy:-5,fz:-1,tx:1,ty:0,tz:1,color:"$(color)",owner:$(owner)}

#塗り
$fill ~-1 ~-5 ~-1 ~1 ~ ~1 $(color)_concrete replace #core:can_inking
$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force
$execute if data entity @s {OnGround:true} run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking

#攻撃
function core:ink_damages/ink_damage_charger with entity @s data

execute if data entity @s {OnGround:true} run kill @s