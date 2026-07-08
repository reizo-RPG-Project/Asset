#> rpg:asset/object/0016.soul_campfire/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 半径3メートルのプレイヤーに再生力上昇
execute as @a[distance=..3] at @s run function reizo_mcfunc_engin:api/effect/give.m {ID:"0003.soul_heal",namespace:"rpg"}