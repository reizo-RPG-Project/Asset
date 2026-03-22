#> rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/filters/0
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/triggercore/interacted/filters/1

execute if entity @p[advancements={rpg:asset/mob/0007/interacted={0.0=true}}] if entity @s[tag=RPG.Mob.0007.ID0.0] run function rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/fetch_entity
execute if entity @p[advancements={rpg:asset/mob/0007/interacted={0.1=true}}] if entity @s[tag=RPG.Mob.0007.ID0.1] run function rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/fetch_entity