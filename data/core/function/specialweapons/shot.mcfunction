advancement revoke @s only core:specialweapon_hold
execute if score @s useSpecialWeapon matches ..0 run return fail
execute if score @s preDelay matches 1.. run scoreboard players remove @s preDelay 1
execute if score @s preDelay matches 1.. run return fail
tag @s add Click
function core:specialweapons/shot_macro with entity @s
scoreboard players add @s rightHold 1