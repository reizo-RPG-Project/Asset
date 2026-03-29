#> rpg:asset/object/0009.loot_chest/tick/open/init/set_item/foreach
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/tick/open/init/_

# データの先頭を取る
data modify storage reizo_mcfunc_engin:context this.SetItem.Args set from storage reizo_mcfunc_engin:context this.SetItem.ItemsArgs[0]

# boxにアイテムを設置
    data modify storage reizo_mcfunc_engin:context this.SetItem.Args.namespace set value "rpg"
    function reizo_mcfunc_engin:api/item/box.m with storage reizo_mcfunc_engin:context this.SetItem.Args

# アイテムを入れるべき位置に移動
function rpg:asset/object/0009.loot_chest/tick/open/init/set_item/move.m with storage reizo_mcfunc_engin:context this.SetItem.Args

# お掃除
    data remove storage reizo_mcfunc_engin:context this.SetItem.ItemsArgs[0]
    data remove storage reizo_mcfunc_engin:context this.SetItem.Args

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.SetItem.ItemsArgs[0] run function rpg:asset/object/0009.loot_chest/tick/open/init/set_item/foreach