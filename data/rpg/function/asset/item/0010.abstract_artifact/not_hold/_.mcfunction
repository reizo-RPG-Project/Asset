#> rpg:asset/item/0010.abstract_artifact/not_hold/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/not_hold/run.m

# リセット
    execute if data storage reizo_mcfunc_engin:context data.Field.STR unless score @s RPG.STR = @s RPG.OriginSTR run scoreboard players operation @s RPG.STR = @s RPG.OriginSTR
    execute if data storage reizo_mcfunc_engin:context data.Field.INT unless score @s RPG.INT = @s RPG.OriginINT run scoreboard players operation @s RPG.INT = @s RPG.OriginINT
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF