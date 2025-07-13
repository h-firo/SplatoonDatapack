$summon item_display ~0 ~1.5 ~0 {Tags:["canDisplay$(owner)","1"],data:{team:$(team),owner:$(owner),color:$(color),num:$(num)},item_display:"ground",teleport_duration:5,\
                            transformation:{left_rotation:[0f,180f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.6f,-0.5f,-0.6f],scale:[1,1,1]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"tacticooler_can"}}}
$ride @n[type=item_display,tag=canDisplay$(owner),tag=1] mount @s
$summon item_display ~0 ~1.5 ~0 {Tags:["canDisplay$(owner)","2"],data:{team:$(team),owner:$(owner),color:$(color),num:$(num)},item_display:"ground",teleport_duration:5,\
                            transformation:{left_rotation:[0f,180f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.6f],scale:[1,1,1]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"tacticooler_can"}}}
$ride @n[type=item_display,tag=canDisplay$(owner),tag=2] mount @n[type=item_display,tag=canDisplay$(owner),tag=1]
$summon item_display ~0 ~1.5 ~0 {Tags:["canDisplay$(owner)","3"],data:{team:$(team),owner:$(owner),color:$(color),num:$(num)},item_display:"ground",teleport_duration:5,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.4f,-0.5f,0.5f],scale:[1,1,1]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"tacticooler_can"}}}
$ride @n[type=item_display,tag=canDisplay$(owner),tag=3] mount @n[type=item_display,tag=canDisplay$(owner),tag=2]
$summon item_display ~0 ~1.5 ~0 {Tags:["canDisplay$(owner)","4"],data:{team:$(team),owner:$(owner),color:$(color),num:$(num)},item_display:"ground",teleport_duration:5,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.65f,-0.5f,0.5f],scale:[1,1,1]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"tacticooler_can"}}}
$ride @n[type=item_display,tag=canDisplay$(owner),tag=4] mount @n[type=item_display,tag=canDisplay$(owner),tag=3]