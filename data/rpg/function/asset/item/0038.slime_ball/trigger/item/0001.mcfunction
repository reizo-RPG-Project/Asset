#> rpg:asset/item/0038.slime_ball/trigger/item/0001
#
# 
#
# @within function rpg:asset/item/0038.slime_ball/trigger/item/0001.slime_fall

# しゃがんでたら停止
execute if score @s reizo_mcfunc_Engin.Sneaking matches 1.. run return 0

# bounceメソッド実行
function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"bounce/_"}