#> rpg:asset/item/0045.copper_leggings/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"chainmail_leggings",components:{item_model:"minecraft:item/0045/items",trim:{material:"0002",pattern:"0002"}}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}