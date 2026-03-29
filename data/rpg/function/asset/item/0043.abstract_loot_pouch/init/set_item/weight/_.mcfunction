#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/_

# 引数を変えて2回実行する
    # データコピー
    data modify storage reizo_mcfunc_engin:context this.SetItem.Weight.data set from storage reizo_mcfunc_engin:context this.SetItem.data
    # 引数セット
    data modify storage reizo_mcfunc_engin:context this.SetItem.Weight.Args.Type set value "Random"
    # 実行
    function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/foreach
    # お掃除
    scoreboard players reset $Item.0043.SetItem.Weight_Sum RPG.Temp
    # データコピー
    data modify storage reizo_mcfunc_engin:context this.SetItem.Weight.data set from storage reizo_mcfunc_engin:context this.SetItem.data
    # 引数セット
    data modify storage reizo_mcfunc_engin:context this.SetItem.Weight.Args.Type set value "Index"
    # 実行
    function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/foreach

# お掃除
    scoreboard players reset $Item.0043.SetItem.Weight_Sum RPG.Temp
    data remove storage reizo_mcfunc_engin:context this.SetItem.Weight