$data modify storage player: $(pNum).weapon set from storage weapons: $(category).$(weapon)
$data merge storage player: {$(pNum):{weapon:{name:$(weapon)}}}
$data modify storage player: $(pNum).category set value $(category)
$data modify storage shot_temp: $(pNum) set from storage player: $(pNum).weapon
$data modify storage shot_temp: $(pNum).team set from storage player: $(pNum).team
$data modify storage shot_temp: $(pNum).color set from storage player: $(pNum).color
$data modify storage shot_temp: $(pNum).num set from storage player: $(pNum).num
$data modify storage shot_temp: $(pNum).num set from storage player: $(pNum).num
scoreboard players set @s preDelay 0
$tellraw @s[tag=operator] {"text":"$(pNum)の武器が$(category).$(weapon)に変更されました"}