#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s objDamage 0
#準備時間-16
scoreboard players set @s useSpecialWeapon 350
scoreboard players set @s specialPoint 0

#前隙
scoreboard players set @s preDelay 0

#発動
$function core:specialweapons/bigbubbler/set with storage player: $(XpLevel)

playsound block.piston.extend master @a ~ ~ ~ 1 1