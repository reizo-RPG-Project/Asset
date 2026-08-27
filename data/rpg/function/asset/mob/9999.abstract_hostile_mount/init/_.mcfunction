#> rpg:asset/mob/9999.abstract_hostile_mount/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# 俺は透明
effect give @s invisibility infinite 1 true

# vehicleの召喚
execute if data storage reizo_mcfunc_engin:context this.vehicleData run function rpg:asset/mob/9999.abstract_hostile_mount/init/summon_vehicle.m with storage reizo_mcfunc_engin:context this

# vehicleに対しての処理
execute on vehicle run function rpg:asset/mob/9999.abstract_hostile_mount/init/vehicle