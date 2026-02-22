#> rpg:asset/object/0003.abstract_spawner/tick/in_hostil.m
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/tick/_

# Initedデータが1bで敵対範囲内にプレイヤーがいないのならInitしたことを消す
$execute if data storage reizo_mcfunc_engin:context this.in_hostil{Inited:1b} unless entity @a[distance=..$(range)] run return run data remove storage reizo_mcfunc_engin:context this.in_hostil.Inited

# 敵対範囲内にプレイヤーがいるのならメソッドを叩く
$execute if entity @a[distance=..$(range)] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"in_hostil/_"}