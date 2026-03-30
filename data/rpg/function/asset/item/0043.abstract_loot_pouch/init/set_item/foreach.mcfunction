#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/_

# データの取得
data modify storage reizo_mcfunc_engin:context this.SetItem.data set from storage reizo_mcfunc_engin:context this.Pools[0]

# ループ回数を決める
execute store result score $Item.0043.SetItem.Rolls RPG.Temp run data get storage reizo_mcfunc_engin:context this.SetItem.data.Rolls

# 再帰でアイテムのデータをセット
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/loop

# データ削除
    data remove storage reizo_mcfunc_engin:context this.SetItem.data
    data remove storage reizo_mcfunc_engin:context this.Pools[0]

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.Pools[0] run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach