#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/_

# 残りデータ数1(これから削除されるので無いと扱う)なので(0..Sum-1)の範囲のランダムな値を作成する
execute unless data storage reizo_mcfunc_engin:context this.SetItem.Weight.data.Entries[1] run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/roll/_