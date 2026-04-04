#> rpg:asset/0047.abstract_cokkie/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# usingスコアが5になったら0にする
execute if score @s reizo_mcfunc_Engin.using_Item matches 5 run scoreboard players set @s reizo_mcfunc_Engin.using_Item 0

# 右手で持ってる場合の処理
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"hold_main/_"}

# ここが動くということは左手に持っているということなので左手で持っている場合の処理
function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"hold_off/_"}