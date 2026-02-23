#> rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/_

# 召喚したことの宣言をクリア
tag @s remove RPG.Obj.0003.Summoned

# HPを1減らす
execute if score @s RPG.Obj.0003.HP matches 1.. run scoreboard players remove @s RPG.Obj.0003.HP 1

# 残り1は本気
execute if score @s RPG.Obj.0003.HP matches 1 if data storage reizo_mcfunc_engin:context data.Field{Seriously:1b} run tag @s add RPG.Obj.0003.in_seriously

# 0になったらremove
execute if score @s RPG.Obj.0003.HP matches 0 run return run function reizo_mcfunc_engin:api/object/remove

# 演出
particle trial_omen ~ ~ ~ 0.3 1.0 0.3 0 10
execute if score @s RPG.Obj.0003.HP matches 2.. run function rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/fx/normal
execute if score @s RPG.Obj.0003.HP matches 1 run function rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/fx/seriously