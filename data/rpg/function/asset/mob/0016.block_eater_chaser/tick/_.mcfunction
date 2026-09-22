#> rpg:asset/mob/0016.block_eater_chaser/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# プレイヤーが半径5マス以内にいないなら動作終了
execute unless entity @p[gamemode=!spectator,distance=..10] run return 0

# FX
execute if predicate {condition:"random_chance",chance:0.5} run function rpg:asset/mob/0016.block_eater_chaser/tick/fx/_

# プレイヤーの方を向く
rotate @s facing entity @p feet

# 縦角度0
data modify entity @s Rotation[1] set value 0

# 前を行く
tp @s ^ ^ ^0.1

# ブロックの乗り越え、下げ
    # 今いる場所がブロックの中で、上に空洞があるなら上にtp
    execute unless block ~ ~ ~ #reizo_mcfunc_engin:no_col if block ~ ~1 ~ #reizo_mcfunc_engin:no_col run tp @s ~ ~1 ~
    # 今いる場所の真下にブロックが無い場合は下にtp
    execute if block ~ ~-0.5 ~ #reizo_mcfunc_engin:no_col run tp ~ ~-0.5 ~

# プレイヤーがめっちゃ近くにいたら攻撃mob召喚
execute if entity @p[distance=..0.5] run function rpg:asset/mob/0016.block_eater_chaser/tick/summon/_