#> rpg:asset/object/0003.abstract_spawner/in_hostil/summon/summon.m
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/summon/foreach

# mobの召喚
$function reizo_mcfunc_engin:api/mob/summon.m {ID:'$(ID)',namespace:'rpg'}

# タグをつける
tag @n[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy] add RPG.Obj.0003.Spawned

# スコアで結びつけ
scoreboard players operation @n[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy,tag=RPG.Obj.0003.Spawned] reizo_mcfunc_Engin.ScoreID = @s reizo_mcfunc_Engin.ScoreID