#> rpg:asset/mob/0002.abstract_enemy/trigger/player_hurt_entiy
#
# 
#
# @within advancement rpg:asset/mob/0002/player_hurt_entity

# タグ付与
tag @s add RPG.Attacker

# 攻撃されたEntityを特定する。
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0002.Enemy,distance=..24] run function rpg:asset/mob/0002.abstract_enemy/trigger/core/player_hurt_entiy/filters/7

# 剥奪
    advancement revoke @s only rpg:asset/mob/0002/player_hurt_entity
    tag @s remove RPG.Attacker