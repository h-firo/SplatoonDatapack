#必要なデータをtemp:に保存
$data merge storage temp: {$(owner):{num:$(owner)}}
$execute positioned ~-2 ~ ~-2 run tag @n[tag=player,dx=4,dy=3,dz=4,scores={drinkTimer=..0}] add drinkPlayer$(owner)
$execute store result storage temp: $(owner).drinkNum int 1 run scoreboard players get @s drinkNum
$function core:specialweapons/tacticooler/give_drink_macro with storage temp: $(owner)