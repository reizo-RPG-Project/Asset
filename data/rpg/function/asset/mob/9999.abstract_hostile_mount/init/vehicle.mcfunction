#> rpg:asset/mob/9999.abstract_hostile_mount/init/vehicle
#
# 
#
# @within function rpg:asset/mob/9999.abstract_hostile_mount/init/_

# タグツケ
    tag @s add reizo_mcfunc_Engin.Mob
    tag @s add RPG.Mob.0002.Enemy

# データを移しておく
    data modify entity @s data.Field set from storage reizo_mcfunc_engin:context this
    data modify entity @s CustomName set from entity @n CustomName

# 自然的な要因で死なないように
    effect give @s regeneration infinite 255 true
    effect give @s[type=#undead] instant_damage infinite 0 true