#> rpg:asset/object/0009.loot_chest/tick/open/init/_
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/tick/open/_

# タグツケ
tag @s add RPG.Obj.0009.Open.Init

# アイテムのデータを送ってもらう
execute as @p run function rpg:asset/object/0009.loot_chest/common/item_data/push

# アイテムを設置する
    data modify storage reizo_mcfunc_engin:context this.SetItem.ItemsArgs set from storage reizo_mcfunc_engin:context this.ItemData.ItemsArgs
    function rpg:asset/object/0009.loot_chest/tick/open/init/set_item/foreach

# データをもらう
execute if data storage reizo_mcfunc_engin:context this.ItemData.ChestItems on passengers run data modify entity @s Items set from storage reizo_mcfunc_engin:context this.ItemData.ChestItems

# アイテムのデータを引いてもらう
execute as @p run function rpg:asset/object/0009.loot_chest/common/item_data/pull

# お掃除
data remove storage reizo_mcfunc_engin:context this.ItemData