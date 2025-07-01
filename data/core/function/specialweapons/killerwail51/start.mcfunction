#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 124
scoreboard players set @s specialPoint 0

#前隙
scoreboard players set @s preDelay 6

#発動
$function core:specialweapons/killerwail51/armorstand_summon with storage player: $(num)

playsound item.goat_horn.sound.5 master @a ~ ~ ~ 0.3 2