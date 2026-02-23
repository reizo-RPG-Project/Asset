#> rpg:asset/object/0003.abstract_spawner/tick/in_hostil.m
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/tick/_

# Initedデータが1bで敵対範囲内にプレイヤーがいないのならInitしたことを消す
$execute if entity @s[tag=RPG.Obj.0003.Inited] unless entity @a[distance=..$(range)] run return run tag @s remove RPG.Obj.0003.Inited

# 範囲内のプレイヤーにタグをつけておく
$tag @a[distance=..$(range)] add RPG.Obj.0003.Target

# 敵対範囲内にプレイヤーがいるのならメソッドを叩く
$execute if entity @a[distance=..$(range)] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"in_hostil/_"}

# お掃除
tag @a[tag=RPG.Obj.0003.Target] remove RPG.Obj.0003.Target