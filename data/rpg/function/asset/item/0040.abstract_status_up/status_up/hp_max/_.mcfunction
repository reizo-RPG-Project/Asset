#> rpg:asset/item/0040.abstract_status_up/status_up/hp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# このIDのデータがあるかチェック
function rpg:asset/item/0040.abstract_status_up/status_up/hp_max/check.m with storage reizo_mcfunc_engin:context origin_Args

# このIDはすでに使われているので動作を終了
execute if data storage reizo_mcfunc_engin:context this{End:1b} run return run data remove storage reizo_mcfunc_engin:context this.End

# フィールドをスコアに
execute store result score $HP_MAX RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.HP_MAX

# 足し算
scoreboard players operation @s RPG.HP_MAX += $HP_MAX RPG.Item.0040.Temp

# お掃除
scoreboard players reset $HP_MAX RPG.Item.0040.Temp

# 実行したアイテムのIDスタックに積む
function rpg:asset/item/0040.abstract_status_up/common/hp_max/stash