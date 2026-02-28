#> rpg:asset/object/0008.edamame_0002/tick/_
#
# 
#
# @within function rpg:asset/object/0007.edamame_0001/tick/_

# ふむ...
execute if entity @p[tag=RPG.Obj.0008.Give.Inited,distance=..5] run return 0

# 親クラスの動作呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"tick/_"}