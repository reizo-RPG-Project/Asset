#> rpg:asset/item/0055.copper_slime_boots/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"chainmail_boots",components:{item_model:"item/0055/items",trim:{material:"0004",pattern:"0004"}}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}