#> rpg:asset/item/0040.abstract_status_up/not_hold/status/def/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# お願いOMD!
function #oh_my_dat:please

# データの削除
function rpg:asset/item/0040.abstract_status_up/common/def/del.m with storage reizo_mcfunc_engin:context origin_data

# リセット
scoreboard players operation @s RPG.DEF -= $DEF RPG.Item.0040.Temp

# お掃除
scoreboard players reset $DEF RPG.Item.0040.Temp