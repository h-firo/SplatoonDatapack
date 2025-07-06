#>ここですべての攻撃を管理

#対人
$execute as @e[distance=..$(distance),tag=player,tag=!attack$(num)] unless score @s team matches $(team) run scoreboard players remove @s health $(damage)
$execute as @e[distance=..$(distance),tag=player,tag=!attack$(num)] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ $(volume)
$execute as @e[distance=..$(distance),tag=player] unless score @s team matches 0 run tag @s add attack$(num)

#対物
$execute as @e[distance=..$(distance),tag=object,tag=!attack$(num)] unless data entity @s {data:{team:$(team)}} run scoreboard players remove @s objDamage $(objDamage)
$execute as @e[distance=..$(distance),tag=object,tag=!attack$(num)] at @s unless data entity @s {data:{team:$(team)}} run playsound block.vault.hit master @a ~ ~ ~ 0.6 1
$execute as @e[distance=..$(distance),tag=object] unless data entity @s {data:{team:$(team)}} run tag @s add attack$(num)

$execute if entity @e[tag=attack$(num)] run kill @s