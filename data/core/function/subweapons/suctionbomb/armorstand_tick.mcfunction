#地面にくっつく
execute if predicate core:is_onground unless score @s isSticking matches 1 run function core:subweapons/suctionbomb/sticking
execute if predicate core:is_onground run return fail

#壁があったら、壁の方向にくっつく
execute if block ~0.3 ~ ~ #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/suctionbomb/sticking
execute if block ~0.3 ~ ~ #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,90f,90f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~-0.3 ~ ~ #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/suctionbomb/sticking
execute if block ~-0.3 ~ ~ #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-90f,90f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~0.3 #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/suctionbomb/sticking
execute if block ~ ~ ~0.3 #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-90f,0f,0f,90f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~-0.3 #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/suctionbomb/sticking
execute if block ~ ~ ~-0.3 #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[90f,0f,0f,90f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~0.3 ~ #core:can_sticking unless score @s isSticking matches 1 run function core:subweapons/suctionbomb/sticking
execute if block ~ ~0.3 ~ #core:can_sticking run \
data merge entity @n[type=item_display,tag=bombDisplay] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}