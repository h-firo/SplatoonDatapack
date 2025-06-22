execute if score @s ink matches ..699 run return run function core:ink_shortage
scoreboard players add num bombNum 1
$execute store result storage subw: $(XpLevel).bombNum int 1 run scoreboard players get num bombNum
$execute store result storage subw: $(XpLevel).num int 1 run experience query @s levels
$data modify storage subw: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage subw: $(XpLevel).color set from storage player: $(XpLevel).color
$function core:subweapons/splashbomb/throw_macro with storage subw: $(XpLevel)