#>ここですべての攻撃を管理

#対人
$execute as @e[distance=..$(distance),tag=player,tag=!attack$(num)] unless score @s team matches $(team) run scoreboard players remove @s health $(damage)
$execute as @e[distance=..$(distance),tag=player,tag=!attack$(num)] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ $(volume)
$execute as @e[distance=..$(distance),tag=player] unless score @s team matches $(team) run tag @s add attack$(num)

#対物
$execute if entity @s[tag=objAttack] run scoreboard players remove @n[nbt={data:{num:$(objNum)}}] objDamage $(objDamage)
execute if entity @s[tag=objAttack] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1

#$execute if entity @e[tag=attack$(num)] as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ $(volume)
execute if entity @e[tag=objAttack] run kill @s