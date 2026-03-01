#> rpg/asset/object/0009.shop_interaction/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# TP
execute at @a[tag=RPG.Mob.0008.Player.Looking] if score @s reizo_mcfunc_Engin.ScoreID = @p[distance=..0] reizo_mcfunc_Engin.ScoreID positioned ~ ~1.1 ~ run tp @s ~ ~ ~