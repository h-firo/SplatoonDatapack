#重複を削除
clear @s *[custom_data={item:"specialweapon"}]

#アイテム補完
$execute if data storage player: {$(num):{specialWeapon:"trizooka"}} run \
item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.trizooka},custom_model_data={strings:["trizooka"]}] 1
$execute if data storage player: {$(num):{specialWeapon:"crabtank"}} run \
item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"none",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.crabtank},custom_model_data={strings:["crabtank"]}] 1
