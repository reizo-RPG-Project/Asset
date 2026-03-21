#> rpg:asset/mob/0013.npc_bees/talk/give_honeycomb/give
#
# 
#
# @within function rpg:asset/mob/0013.npc_bees/talk/give_honeycomb/_

# アイテムのGive
function reizo_mcfunc_engin:api/item/give.m {ID:"0036.honeycomb",namespace:"rpg"}

# プレイヤーの方向にMotionを与えてプレイヤーの方にアイテムを飛ばす
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 50
    data modify entity @n[type=item,distance=..1] Rotation set from entity @s Rotation
    execute as @n[type=item,distance=..1] at @s run function reizo_libs:motion/pounce_on

# FX
particle explosion ~ ~ ~ 0.0 0.0 0.0 0 1