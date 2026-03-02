#> rpg/asset/mob/0008.abstract_tubo_bito/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 近くに壺が投げられたならガチャを引く
execute if entity @e[type=item,distance=..1.5] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"crushing/_"}