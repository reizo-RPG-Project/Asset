#> rpg:asset/item/0005.abstract_food/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# 回復量
    # 体力
        data modify entity @s Item.components."minecraft:lore" append value [{text:"\uE000",font:"icon/_",color:"white",italic:0b},{text:"体力回復量: ",color:"white",italic:0b,font:"default"},{"text":"+",color:"green",italic:0b,font:"default"},{"text":"0",color:"green",italic:0b,font:"default"}]
        data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].text set string storage reizo_mcfunc_engin:item Field.Recovery.HP 0
    # 魔力
        data modify entity @s Item.components."minecraft:lore" append value [{text:"\uE009",font:"icon/_",color:"white",italic:0b},{text:"魔力回復量: ",color:"white",italic:0b,font:"default"},{"text":"+",color:"green",italic:0b,font:"default"},{"text":"0",color:"green",italic:0b,font:"default"}]
        data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].text set string storage reizo_mcfunc_engin:item Field.Recovery.MP 0