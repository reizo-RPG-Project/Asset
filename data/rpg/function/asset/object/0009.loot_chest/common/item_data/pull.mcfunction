#> rpg:asset/object/0009.loot_chest/common/item_data/pull
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/common/item_data/push

item replace block 10000 0 10000 container.0 from entity @s weapon.mainhand
data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this.ItemData
item replace entity @s weapon.mainhand from block 10000 0 10000 container.0