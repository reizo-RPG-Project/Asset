#> rpg:asset/0051.juck_o_luntern/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# じゃがんだ
execute if score @s reizo_mcfunc_Engin.Sneaking matches 1 run return run function rpg:asset/item/0051.juck_o_luntern/tick/status_up

# しゃがんでいないかつ、すでに一回しゃがんでいるのなら諸々を戻す
execute unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. if entity @s[tag=RPG.Item.0051.Is_Sneked] run function rpg:asset/item/0051.juck_o_luntern/common/reset

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}