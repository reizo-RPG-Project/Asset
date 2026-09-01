#> rpg:asset/item/0001.abstract_item/init/lore/spd
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/lore/_

# 移動速度
    data modify entity @s Item.components."minecraft:lore" append value [{text:"\uE016",font:"icon/_",color:"white",italic:0b},{text:"移動速度: ",color:"white",italic:0b,font:"default"},{"text":"+",color:"green",italic:0b,font:"default"},{"text":"0",color:"green",italic:0b,font:"default"}]
    data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].text set string storage reizo_mcfunc_engin:context this.SPD 0
    execute store result score $Item.0001.Init.Lore.Value RPG.Temp run data get storage reizo_mcfunc_engin:context this.SPD
    execute if score $Item.0001.Init.Lore.Value RPG.Temp matches ..-1 run function rpg:asset/item/0001.abstract_item/init/lore/_common/negative