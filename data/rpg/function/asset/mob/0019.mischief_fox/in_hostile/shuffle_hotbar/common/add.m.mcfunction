#> rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/common/add.m
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/set_origin_slot/foreach

$data modify storage reizo_mcfunc_engin:context this.Shuffle.data append from storage reizo_mcfunc_engin:context this.Shuffle.List[-$(index)]
$data remove storage reizo_mcfunc_engin:context this.Shuffle.List[-$(index)]