#> rpg:asset/item/0040.abstract_status_up/not_hold/status/mp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# 値を取得
execute store result score $MP_MAX RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Equipped.MP_MAX

# リセット
scoreboard players operation @s RPG.Bonus.MP_MAX -= $MP_MAX RPG.Item.0040.Temp

# お掃除
    scoreboard players reset $MP_MAX RPG.Item.0040.Temp
    data remove storage reizo_mcfunc_engin:context this.Equipped.MP_MAX

# ステータスを更新
tag @s add RPG.StatusUpdate