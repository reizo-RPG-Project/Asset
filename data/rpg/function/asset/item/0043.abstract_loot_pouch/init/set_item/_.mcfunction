#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/_

# 取得するプールのIndexを決めて取得
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_get_data/_

# ループ回数を決める
execute store result score $Item.0043.SetItem.Rolls RPG.Temp run data get storage reizo_mcfunc_engin:context this.SetItem.data.Rolls
tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this.SetItem.data.Rolls",color:"red"}

# 再帰でセット
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/loop

# お掃除
data remove storage reizo_mcfunc_engin:context this.SetItem