#各プレイヤーに異なる番号を割り振る
scoreboard players add num pNum 1
execute store result storage core: pNum int 1 run scoreboard players get num pNum
tag @r[tag=!pNumAlreadySet] add pNumSetSelector
function core:pnum_macro with storage core:
tag @a[tag=pNumSetSelector] add pNumAlreadySet
tag @a[tag=pNumSetSelector] remove pNumSetSelector
execute unless score num pNum >= count playerCount run function core:set_pnum