#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 110
scoreboard players set @s specialPoint 0

#スペシャルウェポン所持
item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.trizooka},custom_model_data={strings:["trizooka"]}] 1

#前隙
scoreboard players set @s preDelay 5

playsound item.armor.equip_netherite master @a ~ ~ ~ 1.5 1