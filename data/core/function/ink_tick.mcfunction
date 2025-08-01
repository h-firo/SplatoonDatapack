#共通処理
execute if block ~0.5 ~ ~ #core:can_sticking run function core:ink_ticks/wallpaint with entity @s data
execute if block ~-0.5 ~ ~ #core:can_sticking run function core:ink_ticks/wallpaint with entity @s data
execute if block ~ ~ ~0.5 #core:can_sticking run function core:ink_ticks/wallpaint with entity @s data
execute if block ~ ~ ~-0.5 #core:can_sticking run function core:ink_ticks/wallpaint with entity @s data

#種類によって処理分け
execute if entity @s[tag=general] run return run function core:ink_ticks/ink_tick_general with entity @s data
execute if entity @s[tag=charger] run return run function core:ink_ticks/ink_tick_charger with entity @s data
function core:ink_ticks/ink_tick_general with entity @s data