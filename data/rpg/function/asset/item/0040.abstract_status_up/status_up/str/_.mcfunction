#> rpg:asset/item/0040.abstract_status_up/status_up/str/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# データを引き出す
function rpg:asset/item/0040.abstract_status_up/common/str/pull

# このIDのデータがあるかチェック
function rpg:asset/item/0040.abstract_status_up/status_up/str/check.m with storage reizo_mcfunc_engin:context origin_data

# このIDはすでに使われているので動作を終了
execute if data storage reizo_mcfunc_engin:context this{End:1b} run return run data remove storage reizo_mcfunc_engin:context this.End

# フィールドをスコアに
execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.STR

# 足し算
scoreboard players operation @s RPG.STR += $STR RPG.Item.0040.Temp

# お掃除
scoreboard players reset $STR RPG.Item.0040.Temp

# 実行したアイテムのIDスタックに積む
function rpg:asset/item/0040.abstract_status_up/common/str/stash