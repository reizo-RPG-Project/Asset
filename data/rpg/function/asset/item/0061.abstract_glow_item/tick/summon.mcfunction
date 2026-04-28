#> rpg:asset/item/0061.abstract_glow_item/tick/summon
#
# 
#
# @within function rpg:asset/item/0061.abstract_glow_item/tick/_

# 引数セット
data modify storage reizo_mcfunc_engin:object Field.LightLevel set from storage reizo_mcfunc_engin:context data.Field.LightLevel

# 召喚
function reizo_mcfunc_engin:api/object/summon.m {ID:"0011.light",namespace:"rpg"}