#> rpg:asset/object/0015.cobweb_projectile/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 位置可視化
# particle electric_spark

# ブロックを設置しているのなら動作を終了させ、オートキルする
execute if data storage reizo_mcfunc_engin:context this{IsBlockSet:1b} run return run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"placed_block/_"}

# これはコレ()
tag @s add This

# 演出
    particle dust{color:16777215,scale:0.8} ~ ~ ~ 0.1 0.1 0.1 0 1
    particle dust{color:10463946,scale:0.4} ~ ~ ~ 0.1 0.1 0.1 0 3

# 何しらにぶつかったらクモの巣設置
    function rpg:asset/object/0015.cobweb_projectile/tick/detection

# お掃除
tag @s remove This