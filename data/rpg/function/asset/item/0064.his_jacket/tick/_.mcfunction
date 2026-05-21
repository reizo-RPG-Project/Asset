#> rpg:asset/item/0064.his_jacket/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 攻撃食らったな
execute if data entity @s {HurtTime:10s} run function rpg:asset/item/0064.his_jacket/tick/hurt/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}