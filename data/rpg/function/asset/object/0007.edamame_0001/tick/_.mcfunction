#> rpg:asset/object/0007.edamame_0001/tick/_
#
# 
#
# @within function rpg:asset/object/0006.abstract_edamame/tick/_

# ふむ...
execute if entity @p[tag=RPG.Obj.0007.Give.Inited,distance=..5] run return 0

# 親クラスの動作呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"tick/_"}