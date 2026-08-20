#> rpg:asset/item/0094.golden_flower/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"diamond_horse_armor",components:{item_model:"item/0094/items"}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}