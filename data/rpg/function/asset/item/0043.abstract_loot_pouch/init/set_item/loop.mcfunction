#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/loop
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/_

# スコアダウン
scoreboard players remove $Item.0043.SetItem.Rolls RPG.Temp 1

# Weightを取得し全て足す
execute if data storage reizo_mcfunc_engin:context this.SetItem.data run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/_

# 取得したデータからアイテムのデータを決める
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/_

# お掃除
data remove storage reizo_mcfunc_engin:context this.SetItem

# 値が0になるまで再帰
execute if score $Item.0043.SetItem.Rolls RPG.Temp matches 1.. run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/loop