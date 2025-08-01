execute if score @s specialPoint < @s MaxSpecialPoint run return fail
scoreboard players set @s ink 999

$execute if data storage player: {$(num):{specialWeapon:trizooka}} run function core:specialweapons/trizooka/start
$execute if data storage player: {$(num):{specialWeapon:crabtank}} run function core:specialweapons/crabtank/start with entity @s
$execute if data storage player: {$(num):{specialWeapon:killerwail51}} run function core:specialweapons/killerwail51/start with storage player: $(num)
$execute if data storage player: {$(num):{specialWeapon:bigbubbler}} run function core:specialweapons/bigbubbler/start with entity @s
$execute if data storage player: {$(num):{specialWeapon:tacticooler}} run function core:specialweapons/tacticooler/start with storage player: $(num)
$execute if data storage player: {$(num):{specialWeapon:inkvac}} run function core:specialweapons/inkvac/start