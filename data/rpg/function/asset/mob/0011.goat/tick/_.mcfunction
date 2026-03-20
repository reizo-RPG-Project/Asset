#> rpg/asset/mob/0011.goat/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# プレイヤーが半径8マス以内にいるなら敵対
execute if entity @p[distance=..8] run function rpg:asset/mob/0011.goat/tick/in_hostile/_

# 親クラスの動作を実行
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}