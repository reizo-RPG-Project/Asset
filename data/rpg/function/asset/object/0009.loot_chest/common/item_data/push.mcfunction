#> rpg:asset/object/0009.loot_chest/common/item_data/push
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/reset

item replace block 10000 0 10000 container.0 from entity @p weapon.mainhand
data modify storage reizo_mcfunc_engin:context this.ItemData set from block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this
item replace entity @s weapon.mainhand from block 10000 0 10000 container.0