#> rpg:asset/mob/9999.abstract_hostile_mount/init/summon_vehicle.m
#
# 
#
# @within function rpg:asset/mob/9999.abstract_hostile_mount/init/_

# 召喚し乗る
    $summon $(vehicleData) ~ ~ ~
    $ride @s mount @n[type=$(vehicleData)]