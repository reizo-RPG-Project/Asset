#> rpg:asset/object/0018.moving_platform/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# プレイヤーが半径15マスにいるなら動く
execute unless entity @p[distance=..15] run return 0

# スコア減算
execute if score @s RPG.Obj.0018.TT matches -25.. run scoreboard players remove @s RPG.Obj.0018.TT 1

# 方向転換
    execute if score @s RPG.Obj.0018.TT matches -25 run function rpg:asset/object/0018.moving_platform/tick/turn
    execute if score @s RPG.Obj.0018.TT matches -25..0 run return 0

# 移動
function rpg:asset/object/0018.moving_platform/tick/move.m with storage reizo_mcfunc_engin:context this