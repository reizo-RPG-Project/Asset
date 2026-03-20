#> rpg:asset/0042.earth_blessing/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 地に足がついていない場合はリセット処理をし、この下の処理はしないようにする。
execute if entity @s[tag=!reizo_mcfunc_Engin.Is_on_Ground] run return run function rpg:asset/item/0042.earth_blessing/common/reset

# ここが動くということは地に足がついているということを宣言する変数が1bになっているため、ifはいらない。
function rpg:asset/item/0042.earth_blessing/tick/on_ground/_