#地面にいるとき
execute if predicate core:is_onground if score @s isInAir matches 1 run scoreboard players set @s isInAir 0

#空中にいるとき
$execute if predicate core:else_onground if score @s isInAir matches 1 run scoreboard players add @s accuracy $(AirBlur)
execute if predicate core:else_onground run scoreboard players set @s isInAir 1