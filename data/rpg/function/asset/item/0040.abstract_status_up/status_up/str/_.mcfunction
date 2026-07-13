#> rpg:asset/item/0040.abstract_status_up/status_up/str/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# 装備したかどうかを確認、装備していたら止まる。
execute if data storage reizo_mcfunc_engin:context this.Equipped.STR run return 0

# フィールドをスコアに
execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.STR

# 足し算
scoreboard players operation @s RPG.Bonus.STR += $STR RPG.Item.0040.Temp

# お掃除
scoreboard players reset $STR RPG.Item.0040.Temp

# 上昇したステータスの値を取得
data modify storage reizo_mcfunc_engin:context this.Equipped.STR set from storage reizo_mcfunc_engin:context data.Field.STR