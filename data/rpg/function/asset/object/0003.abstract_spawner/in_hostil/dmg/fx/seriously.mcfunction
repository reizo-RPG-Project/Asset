#> rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/fx/seriously
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/_

execute at @a[tag=RPG.Obj.0003.Target] run playsound minecraft:block.trial_spawner.about_to_spawn_item master @a[tag=RPG.Obj.0003.Target] ~ ~ ~ 1 1
particle trial_spawner_detection ~ ~ ~ 0.3 0.5 0.3 0 10