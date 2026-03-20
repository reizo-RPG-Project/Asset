#> rpg:asset/mob/0011.goat/tick/in_hostile/jumping
#
# 
#
# @within function rpg:asset/mob/0011.goat/tick/in_hostile/_

# FX
particle cloud ~ ~ ~

# 地面についたら強制的にタグを外す。(151..と条件を最初につけているのはMotionがMobに適応されるまでに1tickの遅れをとるため)
execute if score @s RPG.Mob.0011.Timer matches 151.. if data entity @s {OnGround:1b} run tag @s remove RPG.Mob.0011.Jumping

# 近くにプレイヤーがいないなら動作終了
execute unless entity @a[distance=..2] run return 0

# 近くにプレイヤーがいたらそいつに対して上方向の力を与える
    # タグつけ
    tag @a[distance=..2] add RPG.Mob.0011.Victim
    # 上方向の力を与える
        # 引数セット
        scoreboard players set $x hb.Motion 0
        scoreboard players set $y hb.Motion 10000
        scoreboard players set $z hb.Motion 0
        # ライブラリ使用
        execute as @a[tag=RPG.Mob.0011.Victim] run function #p_motion:xyz
    # お掃除
    tag @a[tag=RPG.Mob.0011.Victim] remove RPG.Mob.0011.Victim
    tag @s remove RPG.Mob.0011.Jumping