#> rpg:asset/0042.earth_blessing/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 地に足がついていない場合はリセット処理をし、この下の処理はしないようにする。
execute if entity @s[tag=reizo_mcfunc_Engin.Is_on_Ground] run function reizo_mcfunc_engin:api/effect/give.m {ID:"0004.earth_blessing",namespace:"rpg"}