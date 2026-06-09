#> rpg:asset/object/0015.cobweb_projectile/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# 飛ばす
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 100
    execute facing entity @p[tag=RPG.Mob.0002.Target] eyes run function reizo_libs:motion/pounce_on

# 死ぬまでの時間を記録
scoreboard players set @s RPG.Mob.0015.Timer 100