#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_roll/roll.m
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_roll/_

$execute store result score $Item.0043.SetItem.Rolls RPG.Temp run random value $(min)..$(max)