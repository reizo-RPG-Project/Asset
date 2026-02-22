#> rpg/asset/object/0003.abstract_spawner/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 近くにプレイヤーがいるのなら
execute if entity @a[distance=..5] run function rpg:asset/object/0003.abstract_spawner/tick/fx/_

# 近くにプレイヤーがおらず、Initedが1bなら
execute if data storage rpg:object 0003.private.FX{Inited:1b} unless entity @a[distance=..5] run data remove storage rpg:object 0003.private.FX.Inited