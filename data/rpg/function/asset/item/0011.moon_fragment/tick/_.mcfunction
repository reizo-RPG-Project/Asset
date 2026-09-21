#> rpg:asset/0011.moon_fragment/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# エフェクト付与
function reizo_mcfunc_engin:api/effect/give.m {ID:"0008.moon_gravity",namespace:"rpg"}

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:asset/item/super.tick