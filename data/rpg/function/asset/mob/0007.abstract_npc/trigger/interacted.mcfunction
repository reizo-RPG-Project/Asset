#> rpg:asset/mob/0007.abstract_npc/trigger/interacted
#
# 
#
# @within advancement rpg:asset/mob/0007/interacted

# タグ付与
tag @s add RPG.Mob.0007.Talk

# フィルターをかける
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0007.NPC,distance=..16] run function rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/filters/7

# タグ剥奪
tag @s remove RPG.Mob.0007.Talk

# 進捗の剥奪
advancement revoke @s only rpg:asset/mob/0007/interacted