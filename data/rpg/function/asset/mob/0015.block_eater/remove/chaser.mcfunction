#> rpg:asset/mob/0015.block_eater/remove/chaser
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/remove/_

# データ取得
    function reizo_mcfunc_engin:asset/.manager/common/context/args/push
    function reizo_mcfunc_engin:asset/.manager/common/context/data/push
    function reizo_mcfunc_engin:asset/.manager/common/context/this/push

# HP減らす
scoreboard players remove @s RPG.HP 1

# 0になったら死ぬ
execute if score @s RPG.HP matches ..0 run function reizo_mcfunc_engin:api/call/_private.m {Type:"mob",Method:"remove/_"}