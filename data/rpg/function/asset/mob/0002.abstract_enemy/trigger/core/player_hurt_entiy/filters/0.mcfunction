#> rpg:asset/mob/0002.abstract_enemy/trigger/core/player_hurt_entiy/filters/0
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/trigger/core/player_hurt_entiy/filters/1

execute if entity @p[advancements={rpg:asset/mob/0002/player_hurt_entity={0.0=true}}] run function rpg:asset/mob/0002.abstract_enemy/trigger/core/player_hurt_entiy/fetch_entity
execute if entity @p[advancements={rpg:asset/mob/0002/player_hurt_entity={0.1=true}}] run function rpg:asset/mob/0002.abstract_enemy/trigger/core/player_hurt_entiy/fetch_entity