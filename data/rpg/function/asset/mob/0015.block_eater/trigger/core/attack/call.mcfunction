#> rpg:asset/mob/0015.block_eater/trigger/core/attack/call
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/trigger/attack

# タグつけ
tag @s add RPG.Attacker

# スコアで結びつける
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @p[tag=RPG.Victim,distance=0] reizo_mcfunc_Engin.ScoreID

function reizo_mcfunc_engin:asset/.manager/common/context/data/push
function reizo_mcfunc_engin:asset/.manager/common/context/args/push
function reizo_mcfunc_engin:asset/.manager/common/context/this/push
function reizo_mcfunc_engin:api/call/_private.m {Type:"mob",Method:"attack/_"}