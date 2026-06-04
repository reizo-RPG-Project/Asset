#> rpg:asset/mob/0017.chest_trap/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}

# ブロック設置(たまには役に立つんだな...チャッピー...)
    execute if entity @p[y_rotation=-45..45] run setblock ~ ~ ~ trapped_chest[facing=south]
    execute if entity @p[y_rotation=45..135] run setblock ~ ~ ~ trapped_chest[facing=west]
    execute if entity @p[y_rotation=135..180] run setblock ~ ~ ~ trapped_chest[facing=north]
    execute if entity @p[y_rotation=-180..-135] run setblock ~ ~ ~ trapped_chest[facing=north]
    execute if entity @p[y_rotation=-135..-45] run setblock ~ ~ ~ trapped_chest[facing=east]