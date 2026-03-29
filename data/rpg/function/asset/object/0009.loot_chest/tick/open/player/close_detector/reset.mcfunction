#> rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/reset
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/_

# タグ剥奪
    tag @s remove RPG.Obj.0009.Open
    tag @n[type=interaction] remove RPG.Obj.0009.Open.Init

# Push
function rpg:asset/object/0009.loot_chest/common/item_data/push

# データを入れる
data modify storage reizo_mcfunc_engin:context this.ItemData.ChestItems set from entity @n[type=chest_minecart] Items

# Pull
function rpg:asset/object/0009.loot_chest/common/item_data/pull