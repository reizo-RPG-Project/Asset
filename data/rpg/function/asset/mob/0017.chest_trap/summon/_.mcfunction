#> rpg:asset/mob/0017.chest_trap/summon/_
#
# Mobの召喚処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 元となるEntityの召喚
execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["reizo_mcfunc_Engin.Mob","reizo_mcfunc_Engin.Mob.Init","RPG.Mob.0017"]}