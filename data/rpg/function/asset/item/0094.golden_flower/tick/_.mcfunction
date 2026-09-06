#> rpg:asset/0094.golden_flower/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# ケツイ
function reizo_mcfunc_engin:api/effect/give.m {ID:"0007.determination",namespace:"rpg"}

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:asset/item/super.tick