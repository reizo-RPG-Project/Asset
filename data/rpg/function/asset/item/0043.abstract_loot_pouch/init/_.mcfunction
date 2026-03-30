#> rpg:asset/item/0043.abstract_loot_pouch/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# データの取得
data modify storage reizo_mcfunc_engin:context this.Pools set from storage reizo_mcfunc_engin:context data.Field.Pools

# 置くアイテムを決める
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach