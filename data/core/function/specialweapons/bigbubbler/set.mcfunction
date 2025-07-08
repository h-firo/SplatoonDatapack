#本体召喚
$summon item_display ~ ~0.5 ~ {Tags:["bigbubbler$(num)"],data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.2f,0f],scale:[0.8f,0.8f,0.8]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["stand_$(color)"]},"item_model":bigbubbler}}}
$summon item_display ~ ~ ~ {Tags:["bigbubbler_core$(num)"],data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},item_display:"ground",teleport_duration:16,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.8f,0f],scale:[0.8f,0.8f,0.8]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["core_$(color)"]},"item_model":bigbubbler}}}

#コアの移動
$tp @n[type=item_display,tag=bigbubbler_core$(num)] ~ ~4.5 ~

#地面塗り
$fill ~-3 ~-1 ~-3 ~3 ~ ~3 $(color)_concrete replace #core:can_inking