#> rpg/asset/mob/0013.npc_bees/summon/_
#
# Mobの召喚処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 元となるEntityの召喚
summon villager ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Mob","reizo_mcfunc_Engin.Mob.Init"],NoAI:1b}