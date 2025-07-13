#壁があるとき、浮遊効果を与える
scoreboard players set @s isSprint 1
effect give @s levitation 100 5 true
$summon area_effect_cloud ~ ~ ~ \
{custom_particle:{type:"block",block_state:{Name:$(color)_concrete}},Radius:0.8f,Duration:10,Age:3,ReapplicationDelay:10,WaitTime:0,potion_contents:{potion:"minecraft:water",\
custom_effects:[{id:"minecraft:invisibility",amplifier:1,duration:3,show_icon:false,show_particles:false},\
                {id:"minecraft:speed",amplifier:3,duration:3,show_icon:false,show_particles:false}]}}