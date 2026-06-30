#> rpg:asset/mob/0019.mischief_fox/init/vehicle
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/init/_

# タグツケ
    tag @s add reizo_mcfunc_Engin.Mob
    tag @s add RPG.Mob.0002.Enemy

# データを移しておく
    data modify entity @s data.Field set from storage reizo_mcfunc_engin:context this
    data modify entity @s CustomName set from entity @n[type=silverfish] CustomName
