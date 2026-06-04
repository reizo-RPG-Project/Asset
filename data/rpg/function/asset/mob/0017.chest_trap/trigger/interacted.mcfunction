#> rpg:asset/mob/0017.chest_trap/trigger/interacted
#
# 
#
# @within function rpg:asset/mob/0017.chest_trap/summon/_

# 起爆
execute as @n[type=interaction,tag=RPG.Mob.0017] at @s run function rpg:asset/mob/0017.chest_trap/trigger/core/interacted/_

# advancement剥奪
advancement revoke @s only rpg:asset/mob/0017/interacted