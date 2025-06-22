#tick処理
execute as @a at @s run function core:player_tick with entity @s
execute as @e[type=armor_stand,tag=ink] at @s run function core:ink_tick with entity @s data
execute as @e[type=armor_stand,tag=trizooka] at @s run function core:ink_ticks/ink_tick_trizooka with entity @s data
execute as @e[scores={health=..0}] run kill @s

#人数カウント
scoreboard players set count playerCount 0
execute as @a run scoreboard players add count playerCount 1

#ディスプレイ系統
execute as @e[type=item_display,tag=bombDisplay] run function core:subweapons/bomb_display_tick
execute as @e[type=item_display,tag=trizookaDisplay] run function core:specialweapons/trizooka/bullet_display_tick
execute as @e[type=armor_stand,tag=bomb] at @s run function core:subweapons/armorstand_tick

execute as @e[tag=player] at @s if entity @s[tag=Marking] run function core:marker/marking with entity @s

#サブウェポン
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"weapon"}}}}] at @s run function core:subweapons/tick with entity @s

#UIとHUD
function ui_hud:tick

#タグ・スコアリセット
tag @a remove Click
tag @e[tag=player,tag=alreadySearch] remove alreadySearch
scoreboard players set @a rightClick 0