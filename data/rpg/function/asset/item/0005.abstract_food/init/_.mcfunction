#> rpg:asset/item/0005.abstract_food/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# 回復量
    execute if data storage reizo_mcfunc_engin:context this.Recovery.HP run function rpg:asset/item/0005.abstract_food/init/lore/hp
    execute if data storage reizo_mcfunc_engin:context this.Recovery.MP run function rpg:asset/item/0005.abstract_food/init/lore/mp