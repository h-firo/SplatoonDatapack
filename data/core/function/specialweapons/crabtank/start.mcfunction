#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 160
scoreboard players set @s specialPoint 0

#スペシャルウェポン所持
#連射ショット
item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"none",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="none",item_name={translate:item.specialweapon.crabtank.shot},custom_model_data={strings:["crabtank"]}] 1

#前隙
scoreboard players set @s preDelay 20

playsound block.vault.open_shutter master @a ~ ~ ~ 1 2
playsound block.portal.trigger master @a ~ ~ ~ 0.7 2