#> rpg:asset/0010.abstract_artifact/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0010.abstract_artifact/tick/status/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0010.abstract_artifact/tick/status/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF run function rpg:asset/item/0010.abstract_artifact/tick/status/def/_