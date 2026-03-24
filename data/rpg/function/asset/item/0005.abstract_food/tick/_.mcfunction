#> rpg:asset/0005.abstract_food/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 使用
execute if score @s reizo_mcfunc_Engin.using_Item matches 1 run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"used/_"}