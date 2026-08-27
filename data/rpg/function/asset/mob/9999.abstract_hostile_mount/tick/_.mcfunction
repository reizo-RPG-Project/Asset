#> rpg:asset/mob/9999.abstract_hostile_mount/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# vehicleがHitタグがついたなら自分につける
execute on vehicle if entity @s[tag=RPG.Mob.0002.Hit] run function rpg:asset/mob/9999.abstract_hostile_mount/tick/vehicle_hit