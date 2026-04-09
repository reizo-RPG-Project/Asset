#> rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/foreach
#
# 
#
# @within function rpg:asset/object/0012.ender_pouch_storage/tick/close/_

# スロットを取得
data modify storage reizo_mcfunc_engin:context this.Set_EnderChest.Args.Slot set from storage reizo_mcfunc_engin:context this.EnderItems[0].Slot

# セット
function rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/from.m with storage reizo_mcfunc_engin:context this.Set_EnderChest.Args

# 先頭削除
data remove storage reizo_mcfunc_engin:context this.EnderItems[0]

# お掃除
data remove storage reizo_mcfunc_engin:context this.Set_EnderChest

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.EnderItems[0] run function rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/foreach