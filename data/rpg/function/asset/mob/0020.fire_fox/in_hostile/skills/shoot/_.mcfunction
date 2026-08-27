#> rpg:asset/mob/0020.fire_fox/in_hostile/skills/shoot/_
#
# 
#
# @within function rpg:asset/mob/0020.fire_fox/in_hostile/skills/_

# 角度をプレイヤーに合わせる
execute on vehicle run rotate @s facing entity @p[tag=RPG.Mob.0002.Target]

# 炎を飛ばす
    execute rotated ~30 ~ positioned ^ ^ ^2 run function rpg:asset/mob/0020.fire_fox/in_hostile/skills/shoot/shoot
    execute rotated ~-30 ~ positioned ^ ^ ^2 run function rpg:asset/mob/0020.fire_fox/in_hostile/skills/shoot/shoot
    execute positioned ^ ^ ^4 run function rpg:asset/mob/0020.fire_fox/in_hostile/skills/shoot/shoot