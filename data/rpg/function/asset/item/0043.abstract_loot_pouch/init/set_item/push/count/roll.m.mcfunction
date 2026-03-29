#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/count/roll.m
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/count/_

$execute store result storage reizo_mcfunc_engin:context this.SetItem.Push.Args.count int 1 run random value $(min)..$(max)