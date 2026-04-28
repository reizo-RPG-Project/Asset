#> rpg:asset/object/0011.light/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# ライト設置
execute if block ~ ~ ~ #air run function rpg:asset/object/0011.light/tick/set.m with storage reizo_mcfunc_engin:context data.Field

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"tick/_"}