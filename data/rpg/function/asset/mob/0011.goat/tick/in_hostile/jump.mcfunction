#> rpg:asset/mob/0011.goat/tick/in_hostile/jump
#
# 
#
# @within function rpg:asset/mob/0011.goat/tick/in_hostile/_

# ジャンプ！
    # 引数セット
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 200
    # ライブラリ使用
    execute rotated ~ 0 run function reizo_libs:motion/pounce_on

# FX
    execute at @p[distance=..8] run playsound minecraft:entity.goat.ambient master @p[distance=..8] ~ ~ ~ 1 2
    execute at @p[distance=..8] run playsound minecraft:entity.goat.long_jump master @p[distance=..8] ~ ~ ~ 1 2
    particle explosion ~ ~ ~

# タグ付与
tag @s add RPG.Mob.0011.Jumping