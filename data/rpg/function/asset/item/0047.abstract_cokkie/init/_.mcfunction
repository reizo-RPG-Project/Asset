#> rpg:asset/item/0047.abstract_cokkie/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# 説明文に最大スタック数を記述する
    data modify storage reizo_mcfunc_engin:context this.Lore set value [{"text":"最大スタック数: ",color:"white",italic:0b},{"text":"0",color:"green",italic:0b}]
    data modify storage reizo_mcfunc_engin:context this.Lore[-1].text set string storage reizo_mcfunc_engin:context data.Field.Count 0
    data modify entity @s Item.components."minecraft:lore" append from storage reizo_mcfunc_engin:context this.Lore
    data remove storage reizo_mcfunc_engin:context this.Lore

# Lvを0に
data modify storage reizo_mcfunc_engin:context this.Lv set value 0