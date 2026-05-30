#> rpg:asset/item/0040.abstract_status_up/not_hold/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/register

# 全てのステータスのデータが存在しなければ動作終了
execute \
unless data storage reizo_mcfunc_engin:context this.HP_MAX \
unless data storage reizo_mcfunc_engin:context this.MP_MAX \
unless data storage reizo_mcfunc_engin:context this.STR \
unless data storage reizo_mcfunc_engin:context this.INT \
unless data storage reizo_mcfunc_engin:context this.DEF run \
return fail

# リセット
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX if data storage reizo_mcfunc_engin:context this.Equipped.HP_MAX run function rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.MP_MAX unless score @s RPG.MP_MAX = @s RPG.OriginMP_MAX if data storage reizo_mcfunc_engin:context this.Equipped.MP_MAX run function rpg:asset/item/0040.abstract_status_up/not_hold/status/mp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR unless score @s RPG.STR = @s RPG.OriginSTR if data storage reizo_mcfunc_engin:context this.Equipped.STR run function rpg:asset/item/0040.abstract_status_up/not_hold/status/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT unless score @s RPG.INT = @s RPG.OriginINT if data storage reizo_mcfunc_engin:context this.Equipped.INT run function rpg:asset/item/0040.abstract_status_up/not_hold/status/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF unless score @s RPG.DEF = @s RPG.OriginDEF if data storage reizo_mcfunc_engin:context this.Equipped.DEF run function rpg:asset/item/0040.abstract_status_up/not_hold/status/def/_