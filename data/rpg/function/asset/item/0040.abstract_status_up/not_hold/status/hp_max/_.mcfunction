#> rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# お願いOMD!
function #oh_my_dat:please

# データの削除
function rpg:asset/item/0040.abstract_status_up/common/hp_max/del.m with storage reizo_mcfunc_engin:context origin_data

# リセット
scoreboard players operation @s RPG.HP_MAX -= $HP_MAX RPG.Item.0040.Temp

# お掃除
scoreboard players reset $HP_MAX RPG.Item.0040.Temp