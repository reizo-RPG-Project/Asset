#> rpg:asset/item/0064.his_jacket/tick/hurt/random.m
#
# 
#
# @within function rpg:asset/item/0064.his_jacket/tick/hurt/_

$execute store result storage reizo_mcfunc_engin:context this.Hurt.Index int 1 run random value 1..$(Len)