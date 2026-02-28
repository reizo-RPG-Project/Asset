#> rpg/asset/object/0006.abstract_edamame/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 人がいたら
execute positioned ~ ~-0.5 ~ as @p[distance=..0.7] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"get/_"}

# パーティクル
execute as @a[distance=..5] positioned ~ ~-0.5 ~ run function rpg:asset/object/0006.abstract_edamame/tick/particle