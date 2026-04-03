#> rpg:asset/item/0032.copper_chest/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"chainmail_chestplate",components:{item_model:"minecraft:item/0032/items",trim:{material:"0002",pattern:"0002"}}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}