#> rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/shuffle/shuffle.m
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/shuffle/foreach

$item replace block 10000 0 10000 container.0 from entity @s container.$(des)
$item replace entity @s container.$(des) from entity @s container.$(origin)
$item replace entity @s container.$(origin) from block 10000 0 10000 container.0