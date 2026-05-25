#> rpg:asset/item/0005.abstract_food/init/lore/mp
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/init/_

# 説明文セット
    data modify entity @s Item.components."minecraft:lore" append value [{text:"\uE009",font:"icon/_",color:"white",italic:0b},{text:"魔力回復量: ",color:"white",italic:0b,font:"default"},{"text":"+",color:"green",italic:0b,font:"default"},{"text":"0",color:"green",italic:0b,font:"default"}]
    data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].text set string storage reizo_mcfunc_engin:item Field.Recovery.MP 0