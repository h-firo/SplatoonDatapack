#マーキングされた直後の動作(Displayをsummon)
$summon item_display ~ ~ ~ {Tags:["markerDisplay$(num)"],item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[1f,1f,1f]},\
                            item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}

playsound block.conduit.activate master @s ~ ~ ~ 1 1

tag @s add markingInit