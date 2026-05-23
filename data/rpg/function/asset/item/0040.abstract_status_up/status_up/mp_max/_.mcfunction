#> rpg:asset/item/0040.abstract_status_up/status_up/mp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# 装備したかどうかを確認、装備していたら止まる。
execute if data storage reizo_mcfunc_engin:context this.Equipped.MP_MAX run return 0

# フィールドをスコアに
execute store result score $MP_MAX RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.MP_MAX

# 足し算
scoreboard players operation @s RPG.MP_MAX += $MP_MAX RPG.Item.0040.Temp

# お掃除
scoreboard players reset $MP_MAX RPG.Item.0040.Temp

# 上昇したステータスの値を取得
data modify storage reizo_mcfunc_engin:context this.Equipped.MP_MAX set from storage reizo_mcfunc_engin:context data.Field.MP_MAX