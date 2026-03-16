#> rpg:asset/0040.abstract_status_up/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 一回だけ
execute if entity @s[tag=!RPG.Item.0040.StatusUpped] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"status_up/_"}