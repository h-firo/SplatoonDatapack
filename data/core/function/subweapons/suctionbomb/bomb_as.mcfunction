#アマスタの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#計算
$scoreboard players operation @s shotX -= @p[level=$(num)] shotX
$scoreboard players operation @s shotY -= @p[level=$(num)] shotY
scoreboard players operation @s shotY -= 1600 num
$scoreboard players operation @s shotZ -= @p[level=$(num)] shotZ

#Motionの値に計算結果を代入
#data merge entity @s {Motion:[0,0.5,0]}
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s shotX
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s shotY
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s shotZ