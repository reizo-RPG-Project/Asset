#> rpg:asset/item/0040.abstract_status_up/not_hold/status/str/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# お願いOMD!
function #oh_my_dat:please

# データの削除
function rpg:asset/item/0040.abstract_status_up/common/str/del.m with storage reizo_mcfunc_engin:context origin_Args

# リセット
scoreboard players operation @s RPG.STR -= $STR RPG.Item.0040.Temp

# お掃除
scoreboard players reset $STR RPG.Item.0040.Temp