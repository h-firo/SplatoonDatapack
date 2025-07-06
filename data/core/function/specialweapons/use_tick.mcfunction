#カニタンク
$execute if data storage player: {$(num):{specialWeapon:crabtank}} run function core:specialweapons/crabtank/tick with storage player: $(num)

#メガホンレーザー5.1ch
$execute if data storage player: {$(num):{specialWeapon:killerwail51}} run function core:specialweapons/killerwail51/tick with storage player: $(num)

#グレートバリア
$execute if data storage player: {$(num):{specialWeapon:bigbubbler}} run function core:specialweapons/bigbubbler/tick with storage player: $(num)

#共通
scoreboard players remove @s useSpecialWeapon 1
execute if score @s useSpecialWeapon matches 1.. if score @s specialUseCount >= @s maxSpecialUseCount run scoreboard players set @s useSpecialWeapon 0
$execute if score @s useSpecialWeapon matches ..0 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_model_data={strings:["$(specialWeapon)"]},custom_data={item:"specialUse"},item_name={translate:item.specialweapon}]