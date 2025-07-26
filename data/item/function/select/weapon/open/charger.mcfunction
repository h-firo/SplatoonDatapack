clear @s

#スプラチャージャー
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["curingbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["bigbubbler"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick_hold_plus"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["short"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["strongest"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["middle"]}}}],\
                        item_name={translate:"item.weapon.splatroller",bold:true},item_model="splat_roller",custom_data={item:"button",type:"weapon",content:"splatroller"},\
                        lore=[{"color":"gray","translate":"item.weapon.splatroller.lore1"},{"color":"gray","translate":"item.weapon.splatroller.lore2"}]]

#カーボンローラー
item replace entity @s inventory.1 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["trizooka"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick_hold_plus"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["short"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.carbonroller",bold:true},item_model="carbon_roller",custom_data={item:"button",type:"weapon",content:"carbonroller"},\
                        lore=[{"color":"gray","translate":"item.weapon.carbonroller.lore1"},{"color":"gray","translate":"item.weapon.carbonroller.lore2"}]]

#ダイナモローラー
item replace entity @s inventory.2 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["sprinkler"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["tacticooler"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick_hold_plus"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["large"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["large"]}}}],\
                        item_name={translate:"item.weapon.dymamoroller",bold:true},item_model="dynamo_roller",custom_data={item:"button",type:"weapon",content:"dynamoroller"},\
                        lore=[{"color":"gray","translate":"item.weapon.dynamoroller.lore1"},{"color":"gray","translate":"item.weapon.dynamoroller.lore2"}]]