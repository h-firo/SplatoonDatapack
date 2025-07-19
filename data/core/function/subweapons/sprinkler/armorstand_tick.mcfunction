#地面にくっつく
execute if predicate core:is_onground unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data

#壁があったら、壁の方向にくっつく
execute if block ~0.3 ~ ~ #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data
execute if block ~0.3 ~ ~ #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,90f,90f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if block ~-0.3 ~ ~ #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data
execute if block ~-0.3 ~ ~ #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-90f,90f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if block ~ ~ ~0.3 #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data
execute if block ~ ~ ~0.3 #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-90f,0f,0f,90f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if block ~ ~ ~-0.3 #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data
execute if block ~ ~ ~-0.3 #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[90f,0f,0f,90f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if block ~ ~0.3 ~ #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/sprinkler/sticking with entity @s data 
execute if block ~ ~0.3 ~ #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

#回転
execute if block ~ ~0.3 ~ #core:can_sticking run rotate @s ~7 ~
execute if block ~ ~-0.3 ~ #core:can_sticking run rotate @s ~7 ~

#インク発射
scoreboard players add @s paintTimer 1
execute store result score @s paintPos run random value 1..3
execute if score @s paintTimer >= @s paintRate run function core:subweapons/sprinkler/paint with entity @s data