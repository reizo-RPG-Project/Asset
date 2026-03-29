#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/roll/roll.m
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/roll/_

$execute store result storage reizo_mcfunc_engin:context this.SetItem.Weight.Random.result int 1 run random value 0..$(Value)