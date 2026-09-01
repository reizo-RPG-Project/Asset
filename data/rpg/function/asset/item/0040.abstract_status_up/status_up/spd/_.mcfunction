#> rpg:asset/item/0040.abstract_status_up/status_up/spd/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# 装備したかどうかを確認、装備していたら止まる。
execute if data storage reizo_mcfunc_engin:context this.Equipped.SPD run return 0

# フィールドをスコアに
execute store result score $SPD RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.SPD

# 足し算
scoreboard players operation @s RPG.Bonus.SPD += $SPD RPG.Item.0040.Temp

# お掃除
scoreboard players reset $SPD RPG.Item.0040.Temp

# 上昇したステータスの値を取得
data modify storage reizo_mcfunc_engin:context this.Equipped.SPD set from storage reizo_mcfunc_engin:context data.Field.SPD

# ステータスを更新
tag @s add RPG.StatusUpdate