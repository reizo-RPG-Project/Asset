#> rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/fx/normal
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/_

execute at @a[tag=RPG.Obj.0003.Target] run playsound minecraft:block.trial_spawner.detect_player master @a[tag=RPG.Obj.0003.Target] ~ ~ ~ 1 1
