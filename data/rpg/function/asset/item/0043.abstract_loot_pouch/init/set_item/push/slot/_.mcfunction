#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/slot/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/_

# スロットをランダムに決める
execute store result storage reizo_mcfunc_engin:context this.SetItem.Push.Args.Slot byte 1 run random value 0..26

# すでに使用済みなスロットなら再帰して新しく生成する
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/slot/check.m with storage reizo_mcfunc_engin:context this.SetItem.Push.Args