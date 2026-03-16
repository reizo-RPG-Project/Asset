#> rpg:asset/item/0040.abstract_status_up/not_hold/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/register

# リセット
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX run scoreboard players operation @s RPG.HP_MAX = @s RPG.OriginHP_MAX
    execute if data storage reizo_mcfunc_engin:context data.Field.STR unless score @s RPG.STR = @s RPG.OriginSTR run scoreboard players operation @s RPG.STR = @s RPG.OriginSTR
    execute if data storage reizo_mcfunc_engin:context data.Field.INT unless score @s RPG.INT = @s RPG.OriginINT run scoreboard players operation @s RPG.INT = @s RPG.OriginINT
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF
    tag @s remove RPG.Item.0040.StatusUpped