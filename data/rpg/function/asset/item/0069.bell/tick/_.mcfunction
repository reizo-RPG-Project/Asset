#> rpg:asset/0069.bell/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}

# ダメージを受けた
execute if data entity @s {HurtTime:10s} run function rpg:asset/item/0069.bell/tick/hurt