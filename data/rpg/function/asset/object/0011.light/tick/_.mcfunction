#> rpg:asset/object/0011.light/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# ライト設置
execute if block ~ ~ ~ #air run setblock ~ ~ ~ light[level=14]

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"tick/_"}