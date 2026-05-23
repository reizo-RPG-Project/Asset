#> rpg:asset/item/0040.abstract_status_up/status_up/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/_

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX run function rpg:asset/item/0040.abstract_status_up/status_up/hp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.MP_MAX run function rpg:asset/item/0040.abstract_status_up/status_up/mp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0040.abstract_status_up/status_up/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0040.abstract_status_up/status_up/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF run function rpg:asset/item/0040.abstract_status_up/status_up/def/_