#> rpg:asset/item/0060.iron_slime_boots/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"chainmail_boots",components:{item_model:"item/0060/items",trim:{material:"0005",pattern:"0005"}}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}
