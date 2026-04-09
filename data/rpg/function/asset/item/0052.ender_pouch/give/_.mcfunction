#> rpg:asset/item/0052.ender_pouch/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"diamond_horse_armor",components:{item_model:"item/0052/items",enchantment_glint_override:1b}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}