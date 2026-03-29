#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/foreach
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/_

# 先頭のWeightをスコアとして取得
execute store result score $Item.0043.SetItem.Weight RPG.Temp run data get storage reizo_mcfunc_engin:context this.SetItem.Weight.data.Entries[0]

# Sumに足す
scoreboard players operation $Item.0043.SetItem.Weight_Sum RPG.Temp += $Item.0043.SetItem.Weight RPG.Temp

# 引数によって動作を変える
    execute if data storage reizo_mcfunc_engin:context this.SetItem.Weight.Args{Type:"Random"} run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/_
    execute if data storage reizo_mcfunc_engin:context this.SetItem.Weight.Args{Type:"Index"} run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/index/_

# お掃除
    data remove storage reizo_mcfunc_engin:context this.SetItem.Weight.data.Entries[0]
    scoreboard players reset $Item.0043.SetItem.Weight RPG.Temp

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.SetItem.Weight.data.Entries[0] run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/foreach