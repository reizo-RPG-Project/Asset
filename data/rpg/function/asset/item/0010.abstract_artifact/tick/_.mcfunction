#> rpg:asset/0010.abstract_artifact/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# お掃除
    execute unless score @s RPG.STR = @s RPG.OriginSTR run scoreboard players operation @s RPG.STR = @s RPG.OriginSTR
    execute unless score @s RPG.INT = @s RPG.OriginINT run scoreboard players operation @s RPG.INT = @s RPG.OriginINT
    execute unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0010.abstract_artifact/tick/status/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0010.abstract_artifact/tick/status/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF run function rpg:asset/item/0010.abstract_artifact/tick/status/def/_