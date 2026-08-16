#> rpg:asset/object/0018.moving_platform/tick/move.m
#
# 
#
# @within function rpg:asset/object/0018.moving_platform/tick/_

# 移動すべき角度を向かせるマーカー召喚
execute summon marker run data modify entity @s Rotation set from storage reizo_mcfunc_engin:context this.moveRot

# マーカーの角度で移動
    $execute rotated as @n[type=marker] run tp @s ^ ^ ^$(Speed)
    $execute as @n[type=block_display,tag=RPG.Obj.0018.BD] at @s rotated as @n[type=marker] run tp @s ^ ^ ^$(Speed)

# マーカーにお別れだ！...もしプレイヤーが上にのってなかったらだけど。
execute align xyz unless entity @a[dy=1] run return run kill @n[type=marker]

# プレイヤーも動かす
    execute store result score $strength hb.Motion run data get storage reizo_mcfunc_engin:context this.pMotion
    execute align xyz as @a[dy=1] rotated as @n[type=marker] run function #p_motion:looking

# マーカーにお別れだ！
kill @n[type=marker]