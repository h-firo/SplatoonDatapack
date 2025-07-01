execute if score @s specialPoint < @s MaxSpecialPoint run return fail
scoreboard players set @s ink 999
$execute if data storage player: {$(XpLevel):{specialWeapon:trizooka}} run function core:specialweapons/trizooka/start
$execute if data storage player: {$(XpLevel):{specialWeapon:crabtank}} run function core:specialweapons/crabtank/start with entity @s
$execute if data storage player: {$(XpLevel):{specialWeapon:killerwail51}} run function core:specialweapons/killerwail51/start with storage player: $(XpLevel)