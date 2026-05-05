#> rpg:asset/mob/0016.block_eater_chaser/tick/summon/_
#
# 
#
# @within function rpg:asset/mob/0016.block_eater_chaser/tick/_

# 召喚
function reizo_mcfunc_engin:api/mob/summon.m {ID:"0015.block_eater",namespace:"rpg"}

# 後ろに下がる
execute positioned ^ ^ ^-5 run function rpg:asset/mob/0016.block_eater_chaser/tick/summon/tp