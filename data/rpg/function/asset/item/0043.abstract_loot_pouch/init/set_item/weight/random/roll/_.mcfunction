#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/roll/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/_

# Sumから1引いた数をストレージに代入する
execute store result storage reizo_mcfunc_engin:context this.SetItem.Weight.Random.Roll.Value int 1 run scoreboard players remove $Item.0043.SetItem.Weight_Sum RPG.Temp 1

# 0をminとし、Sumから1引いた数をmaxとした乱数をマクロで生成する。
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/random/roll/roll.m with storage reizo_mcfunc_engin:context this.SetItem.Weight.Random.Roll

# お掃除
    scoreboard players reset $Item.0043.SetItem.Weight_Sum RPG.Temp
    data remove storage reizo_mcfunc_engin:context this.SetItem.Weight.Random.Roll