#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/get_data/convert
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/get_data/_

execute if data storage reizo_mcfunc_engin:context this{Type:"minecraft:blade_pottery_sherd"} run return run data modify storage reizo_mcfunc_engin:context this.Type set value 0
execute if data storage reizo_mcfunc_engin:context this{Type:"minecraft:guster_pottery_sherd"} run return run data modify storage reizo_mcfunc_engin:context this.Type set value 1
execute if data storage reizo_mcfunc_engin:context this{Type:"minecraft:explorer_pottery_sherd"} run return run data modify storage reizo_mcfunc_engin:context this.Type set value 2
execute if data storage reizo_mcfunc_engin:context this{Type:"minecraft:sheaf_pottery_sherd"} run return run data modify storage reizo_mcfunc_engin:context this.Type set value 3