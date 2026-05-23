#> rpg/asset/mob/0009.tubo_bito/summon/_
#
# Mobの召喚処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 元となるEntityの召喚
summon villager ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Mob","reizo_mcfunc_Engin.Mob.Init"],NoAI:1b}