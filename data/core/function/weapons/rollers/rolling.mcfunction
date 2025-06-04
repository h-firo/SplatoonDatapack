#TODO 攻撃を加える
execute if predicate core:is_moving run scoreboard players remove @s ink 5
$fill ~$(MinRange) ~-1 ~$(MinRange) ~$(MaxRange) ~-1 ~$(MaxRange) $(color)_concrete replace #core:can_inking