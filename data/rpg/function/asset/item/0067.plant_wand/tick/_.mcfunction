#> rpg:asset/item/0067.plant_wand/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:asset/item/super.tick

# 日光に当たっているならステータスアップ
execute if predicate rpg:asset/item/0067/is_sunny run function reizo_mcfunc_engin:api/effect/give.m {ID:"0005.solar_blessing",namespace:"rpg"}