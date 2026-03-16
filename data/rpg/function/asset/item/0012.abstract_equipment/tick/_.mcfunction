#> rpg:asset/item/0012.abstract_equipment/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 装備の動作
function rpg:asset/item/0012.abstract_equipment/tick/equipment/_

# 全て同じ値ならコンボ発動！
execute if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Chest RPG.Temp if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Legs RPG.Temp if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Feet RPG.Temp run function rpg:asset/item/0012.abstract_equipment/tick/combo/run.m with storage reizo_mcfunc_engin:context data.Field