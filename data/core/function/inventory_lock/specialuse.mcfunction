#重複を削除
clear @s *[custom_data={item:"specialUse"}]

#アイテム補完
$function item:specialweapons/$(specialWeapon)_give
