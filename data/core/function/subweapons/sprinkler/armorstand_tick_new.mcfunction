#>TODO 壊れる処理

#地面にくっつく
execute if predicate core:is_onground unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data

#回転
execute if block ~ ~0.3 ~ #core:can_sticking run rotate @s ~7 ~
execute if block ~ ~-0.3 ~ #core:can_sticking run rotate @s ~7 ~

#インク発射
scoreboard players add @s paintTimer 1
execute store result score @s paintPos run random value 1..3
execute if score @s paintTimer >= @s paintRate run function core:subweapons/sprinkler/paint with entity @s data