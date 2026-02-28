#> rpg:asset/object/0007.edamame_0001/get/_
#
# 
#
# @within function rpg:asset/object/0007.edamame_0001/tick/_

# タグ
    tag @s[tag=!RPG.Obj.0007.Give.Inited,tag=RPG.Obj.0006.Give.Inited] remove RPG.Obj.0006.Give.Inited
    tag @s[tag=!RPG.Obj.0007.Give.Inited] add RPG.Obj.0007.Give.Inited

# 親クラス呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"get/_"}