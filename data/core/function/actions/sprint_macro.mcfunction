#TODO 体力回復
#イカ移動フラグ
$execute if predicate core:is_sprint if block ~ ~-1 ~ $(color)_concrete run scoreboard players set @s isSprint 1
$execute if predicate core:is_sneaking if block ~ ~-1 ~ $(color)_concrete run scoreboard players set @s isSprint 1
$execute if predicate core:is_sprint unless block ~ ~-1 ~ $(color)_concrete run scoreboard players set @s isSprint 0
$execute if predicate core:is_sneaking unless block ~ ~-1 ~ $(color)_concrete run scoreboard players set @s isSprint 0
execute if predicate core:else_sprint run scoreboard players set @s isSprint 0
execute if score @s rightHold matches 1.. run scoreboard players set @s isSprint 0
execute if score @s shotDelay matches 1.. run scoreboard players set @s isSprint 0

#イカ移動演出
$execute if score @s isSprint matches 1 if predicate core:is_moving run particle block{block_state:{Name:"$(color)_concrete"}} ~ ~ ~ 0 0 0 0 5 force

#武器透明化
execute if score @s isSprint matches 1 if items entity @s weapon.mainhand emerald[custom_data={item:"weapon"}] run item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["1"],mode:"replace_section"}}
execute if score @s isSprint matches 0 if items entity @s weapon.mainhand emerald[custom_data={item:"weapon"}] run item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["0"],mode:"replace_section"}}

#インク回復
execute if score @s isSprint matches 1 run scoreboard players add @s ink 15
execute if score @s ink matches 999.. run scoreboard players set @s ink 999

#効果
execute if score @s isSprint matches 1 run summon area_effect_cloud ~ ~ ~ \
{custom_particle:{type:"splash"},Radius:0.8f,Duration:10,Age:3,ReapplicationDelay:10,WaitTime:0,potion_contents:{potion:"minecraft:water",\
custom_effects:[{id:"minecraft:invisibility",amplifier:1,duration:3,show_icon:false,show_particles:false},\
                {id:"minecraft:speed",amplifier:3,duration:3,show_icon:false,show_particles:false}]}}