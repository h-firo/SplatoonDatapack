#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^1.0 {Tags:["shot$(team)","ink","owner$(num)","general","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^-0.4 ^ ^1.0 {Tags:["shot$(team)","ink","owner$(num)","general","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^0.4 ^ ^1.0 {Tags:["shot$(team)","ink","owner$(num)","general","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^-0.2 ^ ^1.0 {Tags:["shot$(team)","ink","owner$(num)","general","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^0.2 ^ ^1.0 {Tags:["shot$(team)","ink","owner$(num)","general","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:weapons/rollers/shot_as with storage shot_temp: $(num)

playsound item.bucket.empty master @a ~ ~ ~ 0.8 0.6
scoreboard players set @s delay 12
$scoreboard players remove @s ink $(Ink)
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)

tag @e[type=armor_stand,tag=shot1] remove shot1