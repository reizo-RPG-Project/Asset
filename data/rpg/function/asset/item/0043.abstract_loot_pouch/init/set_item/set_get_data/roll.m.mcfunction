#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_get_data/roll.m
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_get_data/_

$execute store result storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Index.Value int 1 run random value 1..$(Value)