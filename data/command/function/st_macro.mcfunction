#武器の反映
$data modify storage player: $(pNum).weapon set from storage weapons: $(category).$(weapon)
$data merge storage player: {$(pNum):{weapon:{name:$(weapon)}}}
$data modify storage player: $(pNum).weapon.obj set from storage objectdamage: $(category).$(weapon)
$data modify storage player: $(pNum).subWeapon set from storage subspecials: $(category).$(weapon).subWeapon
$data modify storage player: $(pNum).specialWeapon set from storage subspecials: $(category).$(weapon).specialWeapon
$data modify storage player: $(pNum).category set value $(category)
$data modify storage shot_temp: $(pNum) set from storage player: $(pNum).weapon
$data modify storage shot_temp: $(pNum).category set from storage player: $(pNum).category

#サブスペの反映
scoreboard players set @s specialPoint 0
$execute store result score @s MaxSpecialPoint run data get storage subspecials: $(category).$(weapon).specialPoint
#スペシャル最大使用回数設定
$execute if data storage player: {$(pNum):{specialWeapon:"trizooka"}} run scoreboard players set @s maxSpecialUseCount 3
$execute if data storage player: {$(pNum):{specialWeapon:"crabtank"}} run scoreboard players set @s maxSpecialUseCount 1
$execute if data storage player: {$(pNum):{specialWeapon:"killerwail51"}} run scoreboard players set @s maxSpecialUseCount 1
$execute if data storage player: {$(pNum):{specialWeapon:"bigbubbler"}} run scoreboard players set @s maxSpecialUseCount 1

#プレイヤー情報の反映
$data modify storage shot_temp: $(pNum).team set from storage player: $(pNum).team
$data modify storage shot_temp: $(pNum).color set from storage player: $(pNum).color
$data modify storage shot_temp: $(pNum).num set from storage player: $(pNum).num
scoreboard players set @s preDelay 0
$tellraw @s[tag=operator] {"text":"$(pNum)の武器が$(category).$(weapon)に変更されました"}