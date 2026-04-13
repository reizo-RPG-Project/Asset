#> rpg:asset/item/0040.abstract_status_up/not_hold/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/register

# キャッシュが存在し、ステータスと元のステータスが違うのならリセット
    execute if data storage reizo_mcfunc_engin:context this.Cache.HP_MAX unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX run function rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
    execute if data storage reizo_mcfunc_engin:context this.Cache.STR unless score @s RPG.STR = @s RPG.OriginSTR run function rpg:asset/item/0040.abstract_status_up/not_hold/status/str/_
    execute if data storage reizo_mcfunc_engin:context this.Cache.INT unless score @s RPG.INT = @s RPG.OriginINT run function rpg:asset/item/0040.abstract_status_up/not_hold/status/int/_
    execute if data storage reizo_mcfunc_engin:context this.Cache.DEF unless score @s RPG.DEF = @s RPG.OriginDEF run function rpg:asset/item/0040.abstract_status_up/not_hold/status/def/_