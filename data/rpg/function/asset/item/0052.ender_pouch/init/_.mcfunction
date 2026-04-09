#> rpg:asset/item/0052.ender_pouch/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"data"}
# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"init/_"}