#> rpg:asset/item/0010.abstract_artifact/not_hold/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/not_hold/run.m

# すべてのステータスがOriginと同じだったら動作終了
execute if score @s RPG.STR = @s RPG.OriginSTR if score @s RPG.INT = @s RPG.OriginINT if score @s RPG.DEF = @s RPG.OriginDEF run return 0

# リセット
    execute unless score @s RPG.STR = @s RPG.OriginSTR run scoreboard players operation @s RPG.STR = @s RPG.OriginSTR
    execute unless score @s RPG.INT = @s RPG.OriginINT run scoreboard players operation @s RPG.INT = @s RPG.OriginINT
    execute unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF