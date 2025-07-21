#tick処理
execute as @a if entity @s[advancements={core:hold=false}] run attribute @s movement_speed modifier remove shot_move
execute as @a at @s run function core:player_tick with entity @s
execute as @e[type=armor_stand,tag=ink] at @s run function core:ink_tick with entity @s data
execute as @e[type=armor_stand,tag=trizooka] at @s run function core:ink_ticks/ink_tick_trizooka with entity @s data
execute as @e[type=armor_stand,tag=crabtank] at @s run function core:ink_ticks/ink_tick_crabtank with entity @s data
execute as @e[type=armor_stand,tag=crabtank_explshot] at @s run function core:ink_ticks/ink_tick_explshot with entity @s data
execute as @e[tag=player,scores={health=..0}] at @s run function core:deaths/main

#コアタイム
scoreboard players add time coreTime 1

#人数カウント
scoreboard players set count playerCount 0
execute as @a run scoreboard players add count playerCount 1

#ディスプレイ系統
execute as @e[type=item_display,tag=bombDisplay] run function core:subweapons/bomb_display_tick
execute as @e[type=item_display,tag=trizookaDisplay] run function core:specialweapons/trizooka/bullet_display_tick
execute as @e[type=item_display,tag=explshotDisplay] run function core:specialweapons/crabtank/explshot_display_tick with entity @s data
execute as @e[type=item_display,tag=crabtankDisplay] run function core:specialweapons/crabtank/crabtankdisplay_tick with entity @s data
execute as @e[type=item_display,tag=kd] at @s run function core:specialweapons/killerwail51/display_tick with entity @s data
execute as @e[type=armor_stand,tag=bomb] at @s run function core:subweapons/armorstand_tick

execute as @e[tag=player,type=!player] at @s if entity @s[tag=Marking] run function core:marker/marking {XpLevel:100}

#アイテムを捨てるキーで発動するやつら
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"weapon"}}}}] at @s run function core:subweapons/tick with entity @s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"specialweapon"}}}}] at @s run function core:specialweapons/tick with entity @s

#UIとHUD
function ui_hud:tick
execute as @a at @s if items entity @s player.cursor *[custom_data~{item:"button"}] run function item:clickevent

#タグ・スコアリセット
tag @a remove Click
tag @e[tag=player,tag=alreadySearch] remove alreadySearch
scoreboard players set @a rightClick 0