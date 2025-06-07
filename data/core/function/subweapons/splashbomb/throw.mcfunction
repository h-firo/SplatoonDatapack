scoreboard players add num bombNum 1
$execute store result storage subw: $(XpLevel).bombNum int 1 run scoreboard players get num bombNum
$execute store result storage subw: $(XpLevel).num int 1 run experience query @s levels
$function core:subweapons/splashbomb/throw_macro with storage subw: $(XpLevel)