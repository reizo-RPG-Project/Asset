#> rpg/asset/mob/0007.abstract_npc/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 近くのプレイヤーの方に向く
execute if entity @p[distance=..6] run tp @s ~ ~ ~ facing entity @p[distance=..6]

# 話をしよう。
execute if entity @a[tag=RPG.Mob.0007.Talk,distance=..10] at @a[tag=RPG.Mob.0007.Talk] as @p[distance=..0] if data storage reizo_mcfunc_engin:context data.Field{Talk:1b} run function rpg:asset/mob/0007.abstract_npc/tick/talk/_