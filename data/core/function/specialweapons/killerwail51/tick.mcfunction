#ターゲットセット
$execute if score @s useSpecialWeapon matches 111 run function core:specialweapons/killerwail51/set_target with storage player: $(num)
$execute if score @s useSpecialWeapon matches 98 run function core:specialweapons/killerwail51/set_target with storage player: $(num)
$execute if score @s useSpecialWeapon matches 85 run function core:specialweapons/killerwail51/set_target with storage player: $(num)
$execute if score @s useSpecialWeapon matches 111 run tag @e[tag=killerwail$(num)_target] add killerwailTarget$(num)_1
$execute if score @s useSpecialWeapon matches 98 run tag @e[tag=killerwail$(num)_target] add killerwailTarget$(num)_2
$execute if score @s useSpecialWeapon matches 85 run tag @e[tag=killerwail$(num)_target] add killerwailTarget$(num)_3
$execute as @e[tag=killerwail$(num)_target] run tag @s add alreadyTarget$(num)
$execute as @e[tag=killerwail$(num)_target] run tag @s remove killerwail$(num)_target

$execute if score @s useSpecialWeapon matches ..1 run kill @e[type=item_display,tag=killerwailDisplay$(num)]
$execute if score @s useSpecialWeapon matches ..1 run tag @e[tag=player] remove killerwailTarget$(num)_1
$execute if score @s useSpecialWeapon matches ..1 run tag @e[tag=player] remove killerwailTarget$(num)_2
$execute if score @s useSpecialWeapon matches ..1 run tag @e[tag=player] remove killerwailTarget$(num)_3
$execute if score @s useSpecialWeapon matches ..1 as @e[tag=alreadyTarget$(num)] run tag @s remove alreadyTarget$(num)