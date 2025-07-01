#アマスタ
#$summon armor_stand ^-1 ^ ^ {Tags:["killerwail$(num)_1"],Marker:true,Invisible:false}
#$summon armor_stand ^1 ^ ^ {Tags:["killerwail$(num)_2"],Marker:true,Invisible:false}
#$summon armor_stand ^-0.5 ^-0.5 ^ {Tags:["killerwail$(num)_3"],Marker:true,Invisible:false}
#$summon armor_stand ^0.5 ^-0.5 ^ {Tags:["killerwail$(num)_4"],Marker:true,Invisible:false}
#$summon armor_stand ^-0.5 ^0.5 ^ {Tags:["killerwail$(num)_5"],Marker:true,Invisible:false}
#$summon armor_stand ^0.5 ^0.5 ^ {Tags:["killerwail$(num)_6"],Marker:true,Invisible:false}

#ディスプレイ
$summon item_display ^-1 ^ ^ {Tags:["kd","killerwailDisplay$(num)","1"],data:{team:$(team),owner:$(num),color:$(color),tnum:1},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["megaphone"]}}}}

$summon item_display ^1 ^ ^ {Tags:["kd","killerwailDisplay$(num)","1"],data:{team:$(team),owner:$(num),color:$(color),tnum:1},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["megaphone"]}}}}

$summon item_display ^-0.5 ^-0.5 ^ {Tags:["kd","killerwailDisplay$(num)","2"],data:{team:$(team),owner:$(num),color:$(color),tnum:2},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["megaphone"]}}}}

$summon item_display ^0.5 ^-0.5 ^ {Tags:["kd","killerwailDisplay$(num)","2"],data:{team:$(team),owner:$(num),color:$(color),tnum:2},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["megaphone"]}}}}
                            
$summon item_display ^-0.5 ^1 ^ {Tags:["kd","killerwailDisplay$(num)","3"],data:{team:$(team),owner:$(num),color:$(color),tnum:3},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["megaphone"]}}}}

$summon item_display ^0.5 ^1 ^ {Tags:["kd","killerwailDisplay$(num)","3"],data:{team:$(team),owner:$(num),color:$(color),tnum:3},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.4f,0f],scale:[0.8f,0.8f,0.8f]},\
                            item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["megaphone"]}}}}


$scoreboard players set @e[type=item_display,tag=killerwailDisplay$(num)] killerwailTargetDelay 0
$execute as @e[type=item_display,tag=killerwailDisplay$(num)] at @s rotated as @p[level=$(num)] run tp @s ~ ~ ~ ~ ~