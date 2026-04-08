#> rpg:asset/item/0051.juck_o_luntern/not_hold/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# すでにしゃがんでいたらリセット
execute if entity @s[tag=RPG.Item.0051.Is_Sneked] run function rpg:asset/item/0051.juck_o_luntern/common/reset

# 親クラスの動作呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"not_hold/_"}