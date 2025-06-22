#TODO 攻撃を加える
execute if predicate core:is_moving run scoreboard players remove @s ink 5

#スペシャルポイント処理
$function core:actions/add_specialpoint {fx:$(MinRange),fy:-1,fz:$(MinRange),tx:$(MaxRange),ty:-1,tz:$(MaxRange),color:"$(color)",owner:$(num)}
$fill ~$(MinRange) ~-1 ~$(MinRange) ~$(MaxRange) ~-1 ~$(MaxRange) $(color)_concrete replace #core:can_inking