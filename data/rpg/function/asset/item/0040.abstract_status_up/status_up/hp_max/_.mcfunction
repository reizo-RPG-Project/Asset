#> rpg:asset/item/0040.abstract_status_up/status_up/hp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# データがすでにキャッシュに保存されていたら動作を終了する
execute if data storage reizo_mcfunc_engin:context this.Cache.HP_MAX run return 0

# フィールドをスコアに
execute store result score $HP_MAX RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.HP_MAX

# 足し算
scoreboard players operation @s RPG.HP_MAX += $HP_MAX RPG.Item.0040.Temp

# お掃除
scoreboard players reset $HP_MAX RPG.Item.0040.Temp

# データをキャッシュに保存する
data modify storage reizo_mcfunc_engin:context this.Cache.HP_MAX set from storage reizo_mcfunc_engin:context data.Field.HP_MAX