#tick処理
execute as @a at @s run function core:player_tick with entity @s
execute as @e[type=armor_stand,tag=ink] at @s run function core:ink_tick with entity @s data
execute as @e[scores={health=..0}] run kill @s

#人数カウント
scoreboard players set count playerCount 0
execute as @a run scoreboard players add count playerCount 1

#UIとHUD
function ui_hud:tick

tag @a remove Click
scoreboard players set @a rightClick 0