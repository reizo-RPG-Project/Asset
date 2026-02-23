#> rpg:asset/object/0003.abstract_spawner/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/remove/run.m

# ブロックを消す
setblock ~ ~ ~ air

# ディスプレイも消す
execute at @e[type=block_display,distance=..100] if score @s reizo_mcfunc_Engin.ScoreID = @n reizo_mcfunc_Engin.ScoreID run kill @n[type=block_display]

# 死ぬ
kill @s

# 演出
    playsound block.fire.extinguish master @a ~ ~ ~ 0.5 2