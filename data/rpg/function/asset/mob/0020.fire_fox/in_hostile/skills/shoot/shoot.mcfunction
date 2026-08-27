#> rpg:asset/mob/0020.fire_fox/in_hostile/skills/shoot/shoot
#
# 
#
# @within function rpg:asset/mob/0020.fire_fox/in_hostile/skills/shoot/_

# 炎召喚
summon falling_block ~ ~ ~ {BlockState:{Name:"fire"},Tags:["RPG.Mob.0020.ShootFire"]}

# Motionを与える
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 100
    rotate @n[type=falling_block,tag=RPG.Mob.0020.ShootFire] facing entity @p[tag=RPG.Mob.0002.Target]
    execute as @n[type=falling_block,tag=RPG.Mob.0020.ShootFire] run function reizo_libs:motion/pounce_on