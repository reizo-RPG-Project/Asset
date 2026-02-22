#> rpg/asset/object/0003.abstract_spawner/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 近くにプレイヤーがいるのなら
execute if entity @a[distance=..5] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"in_hostil/_"}

# 近くにプレイヤーがおらず、Initedが1bなら
execute if data storage reizo_mcfunc_engin:context this.in_hostil{Inited:1b} unless entity @a[distance=..5] run data remove storage reizo_mcfunc_engin:context this.in_hostil.Inited