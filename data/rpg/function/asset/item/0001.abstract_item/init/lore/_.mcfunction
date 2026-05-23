#> rpg:asset/item/0001.abstract_item/init/lore/_
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/_

# そのステータスが存在するのなら追加
    execute if data storage reizo_mcfunc_engin:context this.HP_MAX run function rpg:asset/item/0001.abstract_item/init/lore/hp_max
    execute if data storage reizo_mcfunc_engin:context this.MP_MAX run function rpg:asset/item/0001.abstract_item/init/lore/mp_max
    execute if data storage reizo_mcfunc_engin:context this.STR run function rpg:asset/item/0001.abstract_item/init/lore/str
    execute if data storage reizo_mcfunc_engin:context this.INT run function rpg:asset/item/0001.abstract_item/init/lore/int
    execute if data storage reizo_mcfunc_engin:context this.DEF run function rpg:asset/item/0001.abstract_item/init/lore/def