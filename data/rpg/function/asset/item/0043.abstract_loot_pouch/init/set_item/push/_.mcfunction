#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/_

# IDを取得
data modify storage reizo_mcfunc_engin:context this.SetItem.Push.Args.ID set from storage reizo_mcfunc_engin:context this.SetItem.PushData.ID

# countを決める
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/count/_

# アイテムを設置するスロットを決める
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/push/slot/_

# データをアイテムの中に入れる
data modify storage reizo_mcfunc_engin:context this.ItemsArgs append from storage reizo_mcfunc_engin:context this.SetItem.Push.Args
tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this.ItemsArgs",color:"green"}

# お掃除
data remove storage reizo_mcfunc_engin:context this.SetItem.PushData