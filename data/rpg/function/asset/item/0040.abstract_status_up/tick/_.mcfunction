#> rpg:asset/0040.abstract_status_up/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# Init
execute if entity @s[tag=!RPG.Item.0040.Init] run function rpg:asset/item/0040.abstract_status_up/tick/init/_