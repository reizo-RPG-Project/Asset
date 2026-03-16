#> rpg:asset/item/0040.abstract_status_up/not_hold/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/register

# リセット
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX run function rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR unless score @s RPG.STR = @s RPG.OriginSTR run function rpg:asset/item/0040.abstract_status_up/not_hold/status/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT unless score @s RPG.INT = @s RPG.OriginINT run function rpg:asset/item/0040.abstract_status_up/not_hold/status/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF unless score @s RPG.DEF = @s RPG.OriginDEF run function rpg:asset/item/0040.abstract_status_up/not_hold/status/def/_