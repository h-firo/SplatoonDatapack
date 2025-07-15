summon piglin ~ ~1.5 ~ {Tags:["balloon","player"],Silent:true,NoAI:true,Rotation:[90F,0F],IsImmuneToZombification:true,\
                            equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:leather_helmet",count:1,components:{unbreakable:{}}}},\
                            active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b}]}
summon text_display ~ ~3.7 ~ {Rotation:[90F,0F],Tags:["balloonDamage"],text:"100"}
scoreboard players set @n[type=piglin,tag=balloon,dy=2] spawnTime 0
scoreboard players set @n[type=piglin,tag=balloon,dy=2] health 100