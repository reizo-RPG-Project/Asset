#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/slot/check.m
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/slot/_

# 配列にその値があったら再帰
$execute if data storage reizo_mcfunc_engin:context this.SetItem.UsedSlot[{Value:$(Slot)}] run return run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/slot/_

# 使用済みのスロットを配列に追加
    data modify storage reizo_mcfunc_engin:context this.SetItem.UsedSlot append value {}
    data modify storage reizo_mcfunc_engin:context this.SetItem.UsedSlot[-1].Value set from storage reizo_mcfunc_engin:context this.SetItem.Push.Args.Slot