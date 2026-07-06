#> rpg:asset/effect/0001.abstract/init/dup.m
#
# 
#
# @within function rpg:asset/effect/0001.abstract/init/_

$execute \
if data storage reizo_mcfunc_engin:context Effects[{ID:"$(ID)",namespace:"rpg"}] run \
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{Args:{ID:"$(ID)",namespace:"rpg"}}]