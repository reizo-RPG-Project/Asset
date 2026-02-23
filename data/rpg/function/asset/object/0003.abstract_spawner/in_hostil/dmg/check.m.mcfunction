#> rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/check.m
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/_

$execute unless entity @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy,tag=RPG.Obj.0003.Spawned,distance=..100,scores={reizo_mcfunc_Engin.ScoreID=$(ScoreID)}] run function rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/_