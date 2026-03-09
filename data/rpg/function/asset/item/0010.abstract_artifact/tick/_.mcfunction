#> rpg:asset/0010.abstract_artifact/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# お掃除
    execute unless score @s RPG.STR = @s RPG.OriginSTR run scoreboard players operation @s RPG.STR = @s RPG.OriginSTR
    execute unless score @s RPG.INT = @s RPG.OriginINT run scoreboard players operation @s RPG.INT = @s RPG.OriginINT
    execute unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF

# フィールドをスコアに
    execute store result score $STR RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.STR
    execute store result score $INT RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.INT
    execute store result score $DEF RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.DEF

# 足し算
    scoreboard players operation @s RPG.STR += $STR RPG.Item.0010.Status
    scoreboard players operation @s RPG.INT += $INT RPG.Item.0010.Status
    scoreboard players operation @s RPG.DEF += $DEF RPG.Item.0010.Status

# お掃除
    scoreboard players reset $STR RPG.Item.0010.Status
    scoreboard players reset $INT RPG.Item.0010.Status
    scoreboard players reset $DEF RPG.Item.0010.Status