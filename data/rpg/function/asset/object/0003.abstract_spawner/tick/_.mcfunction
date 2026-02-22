#> rpg/asset/object/0003.abstract_spawner/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# プレイヤーが敵対範囲にいるなら動作させる
function rpg:asset/object/0003.abstract_spawner/tick/in_hostil.m with storage reizo_mcfunc_engin:context data.Field.in_hostil