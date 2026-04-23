#> rpg:asset/item/0001.abstract_item/init/lore/_
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/_

# そのステータスが存在するのなら追加
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX run function rpg:asset/item/0001.abstract_item/init/lore/hp_max
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0001.abstract_item/init/lore/str
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0001.abstract_item/init/lore/int
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF run function rpg:asset/item/0001.abstract_item/init/lore/def