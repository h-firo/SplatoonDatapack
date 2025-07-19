scoreboard players remove @s paintRate 1
scoreboard players set @s paintTimer 0

#スペシャルポイント
$execute unless block ^ ^-1 ^1 $(color)_concrete if block ^ ^-1 ^1 #core:can_inking run scoreboard players add @a[level=$(owner)] specialPoint 1
$execute unless block ^ ^-1 ^2 $(color)_concrete if block ^ ^-1 ^2 #core:can_inking run scoreboard players add @a[level=$(owner)] specialPoint 1
$execute unless block ^ ^-1 ^3 $(color)_concrete if block ^ ^-1 ^3 #core:can_inking run scoreboard players add @a[level=$(owner)] specialPoint 1

#数が少ないのでスコアボードの値によって分けて考える
$execute if score @s paintPos matches 1 if block ^ ^-1 ^1 #core:can_inking run setblock ^ ^-1 ^1 $(color)_concrete
$execute if score @s paintPos matches 2 if block ^ ^-1 ^2 #core:can_inking run setblock ^ ^-1 ^2 $(color)_concrete
$execute if score @s paintPos matches 3 if block ^ ^-1 ^3 #core:can_inking run setblock ^ ^-1 ^3 $(color)_concrete