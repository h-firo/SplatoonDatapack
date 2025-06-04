#プレイヤーが所属しているteamと、プレイヤーが持っている武器を、shot関数にマクロとして渡す
$data modify storage shot_temp: $(num) set from storage player: $(num).weapon
$data modify storage shot_temp: $(num).team set from storage player: $(num).team
$data modify storage shot_temp: $(num).color set from storage player: $(num).color
$data modify storage shot_temp: $(num).num set from storage player: $(num).num

#shotNumの増加
scoreboard players add num shotNum 1
execute store result storage shot_temp: 1.shotNum int 1 run scoreboard players get num shotNum

#武器種類によって分ける
$execute if data storage shot_temp: {$(num):{name:"dynamoroller"}} if predicate core:is_onground run return run function core:weapons/rollers/dynamo/shot with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"dynamoroller"}} if predicate core:else_onground run return run function core:weapons/rollers/dynamo/vertical_shot with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"wideroller"}} if predicate core:is_onground run return run function core:weapons/rollers/wide/shot with storage shot_temp: $(num)

#横振りか縦振りか
$execute if predicate core:is_onground run function core:weapons/rollers/shot with storage shot_temp: $(num)
$execute if predicate core:else_onground run function core:weapons/rollers/vertical_shot with storage shot_temp: $(num)