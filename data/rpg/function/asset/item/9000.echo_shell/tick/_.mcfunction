#> rpg:asset/9000.echo_shell/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

execute if score @s reizo_mcfunc_Engin.using_Item matches 1 run function rpg:asset/item/9000.echo_shell/tick/used/_

# シフト押してるなら
execute if score @s reizo_mcfunc_Engin.Sneaking matches 1.. run function rpg:asset/item/9000.echo_shell/tick/return_tp/_