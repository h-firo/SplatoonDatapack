#四方に壁があるか確認
$execute if block ~1 ~ ~ $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb
$execute if block ~-1 ~ ~ $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb
$execute if block ~ ~ ~1 $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb
$execute if block ~ ~ ~-1 $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb

effect clear @s levitation