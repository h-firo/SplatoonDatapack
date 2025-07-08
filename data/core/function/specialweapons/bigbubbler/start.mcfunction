#制限時間追加
scoreboard players set @s specialUseCount 0
#準備時間-16
scoreboard players set @s useSpecialWeapon 350
scoreboard players set @s specialPoint 0

#前隙
scoreboard players set @s preDelay 0

#発動
scoreboard players add num objNum 1
$execute store result storage player: $(XpLevel).objNum int 1 run scoreboard players get num objNum
$function core:specialweapons/bigbubbler/set with storage player: $(XpLevel)

playsound block.piston.extend master @a ~ ~ ~ 1 1