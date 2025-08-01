$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force

#塗り
$execute if block ~1 ~ ~ #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~1 #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~-1 ~ ~ #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~-1 #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if data entity @s {OnGround:true} run fill ~-2 ~-2 ~-2 ~2 ~4 ~2 $(color)_concrete replace #core:can_inking

#オブジェクト紐づけを初期化
execute unless data entity @s data.objNum run data merge entity @s {data:{objNum:-1}}

#直撃ダメージ
$function core:damage {distance:1.5,num:$(shotNum),team:$(team),damage:220,objDamage:1320,volume:0.5,objNum:$(objNum),owner:$(owner)}
#旧処理
#$execute as @e[distance=..1.5,tag=player,tag=!trizooka$(shotNum)] unless score @s team matches $(team) run scoreboard players remove @s health 220

#削除処理
execute if block ~1 ~ ~ #core:can_sticking run kill @s
execute if block ~ ~ ~1 #core:can_sticking run kill @s
execute if block ~-1 ~ ~ #core:can_sticking run kill @s
execute if block ~ ~ ~-1 #core:can_sticking run kill @s

execute if data entity @s {OnGround:true} run function core:specialweapons/trizooka/explosion with entity @s data
execute if data entity @s {OnGround:true} run kill @s