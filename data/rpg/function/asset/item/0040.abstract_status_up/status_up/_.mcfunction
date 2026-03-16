#> rpg:asset/item/0040.abstract_status_up/status_up/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/_

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX if entity @s[tag=!RPG.Item.0040.StatusUpped.HP_MAX] run function rpg:asset/item/0040.abstract_status_up/status_up/hp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR if entity @s[tag=!RPG.Item.0040.StatusUpped.STR] run function rpg:asset/item/0040.abstract_status_up/status_up/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT if entity @s[tag=!RPG.Item.0040.StatusUpped.INT] run function rpg:asset/item/0040.abstract_status_up/status_up/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF if entity @s[tag=!RPG.Item.0040.StatusUpped.DEF] run function rpg:asset/item/0040.abstract_status_up/status_up/def/_