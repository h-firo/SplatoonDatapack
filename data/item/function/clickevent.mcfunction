#インベントリ上のボタンがクリックされたときの処理
playsound ui.button.click ui @s ~ ~ ~ 1
execute if items entity @s player.cursor *[custom_data~{item:"button",type:"type_select"}] run function item:select/weapon/clickevents/type
execute if items entity @s player.cursor *[custom_data~{item:"button",type:"weapon"}] run function item:select/weapon/clickevents/weapon
function item:select/weapon/type_select_open