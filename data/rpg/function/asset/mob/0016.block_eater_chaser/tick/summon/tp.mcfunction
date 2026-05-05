#> rpg:asset/mob/0016.block_eater_chaser/tick/summon/tp
#
# 
#
# @within function rpg:asset/mob/0016.block_eater_chaser/tick/summon/_

# ブロックがあるなら再帰
execute unless block ^ ^ ^1 #reizo_mcfunc_engin:no_col positioned ^ ^ ^1 run return run function rpg:asset/mob/0016.block_eater_chaser/tick/summon/tp

# ないならTP
tp @s ~ ~ ~