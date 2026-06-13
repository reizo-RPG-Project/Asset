#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/fail
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach

# データ削除
    data remove storage reizo_mcfunc_engin:context this.SetItem.data
    data remove storage reizo_mcfunc_engin:context this.Pools[0]

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.Pools[0] run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach