#演出
$tp @n[type=item_display,tag=standDisplay$(owner)] @s
$execute if entity @s[nbt={OnGround:true}] run particle snowflake ~ ~ ~ 0.3 1 0.3 0 1 force @a[scores={team=$(team)}]

#ドリンク展開
execute unless score @s objTimer matches 1.. if entity @s[nbt={OnGround:true}] positioned ~ ~ ~ run function core:specialweapons/tacticooler/expand_can with entity @s data

#ドリンクを渡す
execute if entity @s[nbt={OnGround:true}] positioned ~-2 ~ ~-2 if entity @e[tag=player,dx=4,dy=3,dz=4,scores={drinkTimer=..0}] positioned ~2 ~ ~2 run function core:specialweapons/tacticooler/give_drink with entity @s data

#タイマー
execute if entity @s[nbt={OnGround:true}] run scoreboard players add @s objTimer 1
$execute if score @s objTimer matches 300.. run kill @e[type=item_display,tag=standDisplay$(owner)]
$execute if score @s objTimer matches 300.. run kill @e[type=item_display,tag=canDisplay$(owner)]
$execute if score @s objTimer matches 300.. run tag @e[tag=player,tag=!drinkPlayer$(owner)] remove drinkPlayer$(owner)
execute if score @s objTimer matches 300.. run kill @s