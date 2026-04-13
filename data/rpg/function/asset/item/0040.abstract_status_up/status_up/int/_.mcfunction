#> rpg:asset/item/0040.abstract_status_up/status_up/int/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# データがすでにキャッシュに保存されていたら動作を終了する
execute if data storage reizo_mcfunc_engin:context this.Cache.INT run return 0

# フィールドをスコアに
execute store result score $INT RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.INT

# 足し算
scoreboard players operation @s RPG.INT += $INT RPG.Item.0040.Temp

# お掃除
scoreboard players reset $INT RPG.Item.0040.Temp

# データをキャッシュに保存する
data modify storage reizo_mcfunc_engin:context this.Cache.INT set from storage reizo_mcfunc_engin:context data.Field.INT