#> rpg/asset/object/0001.click_detection/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# スコアアップ
execute unless score @s reizo_mcfunc_Engin.KillTimer matches 3.. run return run scoreboard players add @s reizo_mcfunc_Engin.KillTimer 1

# 3にならないとここは動かない
    tp @s ~ ~-1000 ~
    kill @s