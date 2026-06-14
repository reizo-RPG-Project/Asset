#> rpg:asset/object/0016.soul_campfire/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 半径3メートルのプレイヤーに再生力上昇
# TODO: いつかEffectに。
execute as @a[distance=..3,tag=!RPG.Obj.0016.Player] run return run function rpg:asset/object/0016.soul_campfire/tick/add

# 半径三メートルから出たら終わり。
execute as @a[distance=3..,tag=RPG.Obj.0016.Player] run function rpg:asset/object/0016.soul_campfire/tick/reset