#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/count/_
#
# minとmaxがある可能性があるためマクロでminとmaxを範囲とした乱数を生成し、countとする。minとmaxが無ければそのままの値なため、そのまま引数として入れる
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/_

# countを決める
    # min,maxがあるならその値を範囲とした乱数を生成し、それをcountとする。
    execute if data storage reizo_mcfunc_engin:context this.SetItem.PushData.count.min if data storage reizo_mcfunc_engin:context this.SetItem.PushData.count.max run return run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/count/roll.m with storage reizo_mcfunc_engin:context this.SetItem.PushData.count
    # ないならそのまま
    data modify storage reizo_mcfunc_engin:context this.SetItem.Push.Args.count set from storage reizo_mcfunc_engin:context this.SetItem.PushData.count