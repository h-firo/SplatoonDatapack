#四方に壁があるか確認
$execute if block ~1 ~ ~ $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}
$execute if block ~-1 ~ ~ $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}
$execute if block ~ ~ ~1 $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}
$execute if block ~ ~ ~-1 $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}

effect clear @s levitation