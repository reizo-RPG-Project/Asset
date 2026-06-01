#> rpg:asset/object/0003.abstract_spawner/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/remove/run.m

# ブロックを消す
setblock ~ ~ ~ air

# ディスプレイも消す
execute at @e[type=block_display,distance=..100] if score @s RPG.Obj.0003.ID = @n RPG.Obj.0003.ID run kill @n[type=block_display]

# アイテムを落とす
function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"drop/_"}

# 死ぬ
kill @s

# 演出
    playsound block.glass.break master @a ~ ~ ~ 0.5 2