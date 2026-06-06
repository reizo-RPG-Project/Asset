#> rpg:asset/mob/0009.tubo_bito/talk/give/give
#
# 
#
# @within function rpg:asset/mob/0009.tubo_bito/talk/give/_

# アイテムのGive
    function reizo_mcfunc_engin:api/item/give.m {ID:"9000.echo_shell",namespace:"rpg"}
    summon item ~ ~ ~ {Item:{id:"ominous_trial_key",components:{custom_name:"ダンジョンのカギ"}}}

# プレイヤーの方向にMotionを与えてプレイヤーの方にアイテムを飛ばす
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 50
    execute as @e[type=item,distance=..1,limit=2] run data modify entity @s Rotation set from entity @s Rotation
    execute as @e[type=item,distance=..1,limit=2] at @s run function reizo_libs:motion/pounce_on

# FX
particle explosion ~ ~ ~ 0.0 0.0 0.0 0 1