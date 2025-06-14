execute if predicate core:is_onground run tp @s ^ ^ ^0.7
$execute if predicate core:is_onground run fill ~ ~-1 ~ ~0.5 ~-1 ~0.5 $(color)_concrete replace #core:can_inking
$execute if block ^ ^ ^0.7 #core:can_inking run setblock ^ ^ ^0.7 $(color)_concrete
execute if block ^ ^ ^0.7 #core:can_sticking run tp @s ^ ^ ^ facing ^ ^ ^-0.2