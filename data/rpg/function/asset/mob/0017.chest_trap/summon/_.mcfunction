#> rpg:asset/mob/0017.chest_trap/summon/_
#
# Mobの召喚処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 元となるEntityの召喚
execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #reizo_mcfunc_engin:no_col run summon interaction ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Mob","reizo_mcfunc_Engin.Mob.Init","RPG.Mob.0017"]}