#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 160
scoreboard players set @s specialPoint 0

#初期化
scoreboard players set @s shotFireRate 50

#スペシャルウェポン所持
item replace entity @s hotbar.1 with emerald[consumable={consume_seconds:100,animation:"none",sound:"entity.tropical_fish.ambient",has_consume_particles:false},\
                                            custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.crabtank},custom_model_data={strings:["crabtank"]}] 1


#顔
$item replace entity @s armor.head with player_head[profile={id:$(UUID)}]
$function core:specialweapons/crabtank/crabtank_display with storage player: $(XpLevel)

attribute @s movement_speed modifier add crabtank_move -0.05 add_value

#前隙
scoreboard players set @s preDelay 20

playsound block.vault.open_shutter master @a ~ ~ ~ 1 2
playsound block.portal.trigger master @a ~ ~ ~ 0.7 2