#> rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/reset
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/_

# タグ剥奪
tag @s remove RPG.Obj.0009.Open

# お願いOMD!
function #oh_my_dat:please

# リセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Obj.0009.Items

# 中身をデータに
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Obj.0009.Items set from entity @n[type=chest_minecart] Items