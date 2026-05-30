#> rpg:asset/mob/0009.tubo_bito/talk/give_shell/give
#
# 
#
# @within function rpg:asset/mob/0009.tubo_bito/talk/give_shell/_

# アイテムのGive
function reizo_mcfunc_engin:api/item/give.m {ID:"9000.echo_shell",namespace:"rpg"}

# プレイヤーの方向にMotionを与えてプレイヤーの方にアイテムを飛ばす
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 50
    data modify entity @n[type=item,distance=..1] Rotation set from entity @s Rotation
    execute as @n[type=item,distance=..1] at @s run function reizo_libs:motion/pounce_on

# FX
particle explosion ~ ~ ~ 0.0 0.0 0.0 0 1