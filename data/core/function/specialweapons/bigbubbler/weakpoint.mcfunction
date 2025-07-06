$execute if entity @e[tag=ink,distance=..1,tag=!shot$(team)] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1
$execute if entity @e[tag=ink,distance=..1,tag=!shot$(team)] run playsound item.flintandsteel.use master @a ~ ~ ~ 0.6 1
$execute if entity @e[tag=ink,distance=..1,tag=!shot$(team)] run scoreboard players add @a[level=$(owner)] objDamage 10
$execute as @e[tag=ink,distance=..1,tag=!shot$(team)] run kill @s