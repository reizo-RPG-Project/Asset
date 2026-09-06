#> rpg:asset/0069.bell/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:asset/item/super.tick

# ダメージを受けた
execute if data entity @s {HurtTime:9s} run function rpg:asset/item/0069.bell/tick/hurt