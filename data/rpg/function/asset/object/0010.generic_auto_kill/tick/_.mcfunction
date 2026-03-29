#> rpg/asset/object/0010.generic_auto_kill/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# スコアダウン
execute if score @s reizo_mcfunc_Engin.KillTimer matches 1.. run return run scoreboard players remove @s reizo_mcfunc_Engin.KillTimer 1
execute if score @s reizo_mcfunc_Engin.KillTimer matches ..0 run function reizo_mcfunc_engin:api/object/remove