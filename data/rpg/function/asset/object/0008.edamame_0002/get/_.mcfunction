#> rpg:asset/object/0008.edamame_0002/get/_
#
# 
#
# @within function rpg:asset/object/0006.abstract_edamame/tick/_

# タグ
    tag @s[tag=!RPG.Obj.0008.Give.Inited,tag=RPG.Obj.0006.Give.Inited] remove RPG.Obj.0006.Give.Inited
    tag @s[tag=!RPG.Obj.0008.Give.Inited] add RPG.Obj.0008.Give.Inited

# 親クラス呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"get/_"}