#> rpg:asset/item/0005.abstract_food/used/fx/particle/get_data
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/used/fx/_

# 持っている場所のデータを取得
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run data modify storage reizo_mcfunc_engin:context this.FX.particle.item_model set from entity @s SelectedItem.components."minecraft:item_model"
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run return run data modify storage reizo_mcfunc_engin:context this.FX.particle.item_model set from entity @s equipment.offhand.components."minecraft:item_model"