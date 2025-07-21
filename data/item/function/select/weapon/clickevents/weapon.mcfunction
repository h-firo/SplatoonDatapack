#武器を設定
execute if items entity @s player.cursor *[custom_data~{content:"splattershot"}] run function command:set_weapon {category:shooter,weapon:splattershot}
execute if items entity @s player.cursor *[custom_data~{content:"splattershot_pro"}] run function command:set_weapon {category:shooter,weapon:splattershot_pro}
execute if items entity @s player.cursor *[custom_data~{content:"ftgal"}] run function command:set_weapon {category:shooter,weapon:ftgal}

execute if items entity @s player.cursor *[custom_data~{content:"splatroller"}] run function command:set_weapon {category:roller,weapon:splatroller}
execute if items entity @s player.cursor *[custom_data~{content:"carbonroller"}] run function command:set_weapon {category:roller,weapon:carbonroller}
execute if items entity @s player.cursor *[custom_data~{content:"dynamoroller"}] run function command:set_weapon {category:roller,weapon:dynamoroller}

clear @s