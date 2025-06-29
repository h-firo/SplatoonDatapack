#重複を削除
clear @s *[custom_data={item:"weapon"}]

#アイテム補完
$function item:weapons/$(category)/$(name)/give
