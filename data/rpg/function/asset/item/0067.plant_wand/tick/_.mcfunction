#> rpg:asset/item/0067.plant_wand/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}

# 晴れとらんやんけ
execute unless predicate rpg:asset/item/0067/is_sunny if data storage reizo_mcfunc_engin:context this.IsSunny run return run function rpg:asset/item/0067.plant_wand/common/reset

# 日光に当たっているならステータスアップ
execute if predicate rpg:asset/item/0067/is_sunny unless data storage reizo_mcfunc_engin:context this.IsSunny run function rpg:asset/item/0067.plant_wand/tick/is_sunny