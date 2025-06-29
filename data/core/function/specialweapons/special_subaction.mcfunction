execute if score @s useSpecialWeapon matches ..0 run return fail

#プレイヤーが所属しているteamと、プレイヤーが使うスペシャルを、shot関数にマクロとして渡す
$data modify storage special_temp: $(XpLevel) set from storage player: $(XpLevel).weapon
$data modify storage special_temp: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage special_temp: $(XpLevel).color set from storage player: $(XpLevel).color
$data modify storage special_temp: $(XpLevel).num set from storage player: $(XpLevel).num

#スペシャルごとに専用のデータを持たせる
$execute if data storage player: {$(XpLevel):{specialWeapon:crabtank}} store result storage special_temp: $(XpLevel).fireRate int 1 run scoreboard players get @s shotFireRate

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage special_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

execute if score @s shotDelay matches 1.. run return run \
item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"none",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.crabtank},custom_model_data={strings:["crabtank"]}] 1

$execute if data storage player: {$(XpLevel):{specialWeapon:crabtank}} if score @s shotDelay matches ..0 run \
function core:specialweapons/crabtank/explosion_shot with storage special_temp: $(XpLevel)