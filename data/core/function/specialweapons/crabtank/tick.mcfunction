#当たり判定
$execute positioned ^ ^ ^1 if entity @e[tag=ink,distance=..1,tag=!shot$(team)] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1
$execute positioned ^ ^ ^1 if entity @e[tag=ink,distance=..1,tag=!shot$(team)] run scoreboard players add @s damage 1
execute if score @s damage matches 500.. run scoreboard players set @s useSpecialWeapon 0
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..1,tag=!shot$(team)] run kill @s

#キューブ化
execute if predicate core:is_sprint unless score @s isCube matches 1 run function core:specialweapons/crabtank/cube with entity @s
execute unless predicate core:is_sprint if score @s isCube matches 1 run function core:specialweapons/crabtank/stand with entity @s

#演出
execute if score @s useSpecialWeapon matches 60 run playsound block.decorated_pot.insert master @a ~ ~ ~ 0.8 0.5
execute if score @s useSpecialWeapon matches 40 run playsound block.decorated_pot.insert master @a ~ ~ ~ 0.8 0.6
execute if score @s useSpecialWeapon matches 30 run playsound block.decorated_pot.insert master @a ~ ~ ~ 0.8 0.7
execute if score @s useSpecialWeapon matches 20 run playsound block.decorated_pot.insert master @a ~ ~ ~ 0.8 0.8
execute if score @s useSpecialWeapon matches 10 run playsound block.decorated_pot.insert master @a ~ ~ ~ 0.8 0.9
execute if score @s useSpecialWeapon matches ..0 run kill @e[type=item_display,tag=crabtankDisplay]
execute if score @s useSpecialWeapon matches ..0 run effect clear @s invisibility
execute if score @s useSpecialWeapon matches ..0 run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 1.5
execute if score @s useSpecialWeapon matches ..0 run attribute @s movement_speed modifier remove crabtank_move
execute if score @s useSpecialWeapon matches ..0 run clear @s player_head

#連射レートリセット
$execute if data storage player: {$(num):{specialWeapon:crabtank}} if score @s rightHold matches 0 run scoreboard players set @s shotFireRate 50