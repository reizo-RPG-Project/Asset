#> rpg/asset/mob/0007.abstract_npc/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 近くのプレイヤーの方に向く
execute if entity @p[distance=..6] run tp @s ~ ~ ~ facing entity @p[distance=..6]

# 話をしよう。
execute if entity @p[tag=RPG.Mob.0007.Talk] if data storage reizo_mcfunc_engin:context data.Field{Talk:1b} run function rpg:asset/mob/0007.abstract_npc/tick/talk/_