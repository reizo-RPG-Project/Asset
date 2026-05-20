#> rpg:asset/item/0040.abstract_status_up/status_up/int/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# 装備したかどうかを確認、装備していたら止まる。
execute if data storage reizo_mcfunc_engin:context this.Equipped.INT run return 0

# フィールドをスコアに
execute store result score $INT RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.INT

# 足し算
scoreboard players operation @s RPG.INT += $INT RPG.Item.0040.Temp

# お掃除
scoreboard players reset $INT RPG.Item.0040.Temp

# 上昇したステータスの値を取得
data modify storage reizo_mcfunc_engin:context this.Equipped.INT set from storage reizo_mcfunc_engin:context this.INT