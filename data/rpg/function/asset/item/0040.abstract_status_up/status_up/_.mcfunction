#> rpg:asset/item/0040.abstract_status_up/status_up/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/_

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context this.HP_MAX run function rpg:asset/item/0040.abstract_status_up/status_up/hp_max/_
    execute if data storage reizo_mcfunc_engin:context this.MP_MAX run function rpg:asset/item/0040.abstract_status_up/status_up/mp_max/_
    execute if data storage reizo_mcfunc_engin:context this.STR run function rpg:asset/item/0040.abstract_status_up/status_up/str/_
    execute if data storage reizo_mcfunc_engin:context this.INT run function rpg:asset/item/0040.abstract_status_up/status_up/int/_
    execute if data storage reizo_mcfunc_engin:context this.DEF run function rpg:asset/item/0040.abstract_status_up/status_up/def/_
    execute if data storage reizo_mcfunc_engin:context this.SPD run function rpg:asset/item/0040.abstract_status_up/status_up/spd/_