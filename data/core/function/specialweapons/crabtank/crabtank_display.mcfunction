$summon item_display ~ ~ ~ {Tags:["crabtankDisplay"],data:{team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.8f,0f],scale:[1.3f,1.3f,1.3]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["stand"]},"item_model":crabtank}}}
effect give @s invisibility infinite 1 true