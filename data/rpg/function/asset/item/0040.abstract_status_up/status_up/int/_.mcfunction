#> rpg:asset/item/0040.abstract_status_up/status_up/int/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# データを引き出す
function rpg:asset/item/0040.abstract_status_up/common/int/pull

# このIDのデータがあるかチェック
function rpg:asset/item/0040.abstract_status_up/status_up/int/check.m with storage reizo_mcfunc_engin:context origin_Args

# このIDはすでに使われているので動作を終了
execute if data storage reizo_mcfunc_engin:context this{End:1b} run return run data remove storage reizo_mcfunc_engin:context this.End

# フィールドをスコアに
execute store result score $INT RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.INT

# 足し算
scoreboard players operation @s RPG.INT += $INT RPG.Item.0040.Temp

# お掃除
scoreboard players reset $INT RPG.Item.0040.Temp

# 実行したアイテムのIDスタックに積む
function rpg:asset/item/0040.abstract_status_up/common/int/stash