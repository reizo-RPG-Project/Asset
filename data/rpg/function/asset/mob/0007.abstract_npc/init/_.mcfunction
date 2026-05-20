#> rpg:asset/mob/0007.abstract_npc/init/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/init/_

# 俺はMob 0007だ！
tag @s add RPG.Mob.0007.NPC

# NoAI
data modify entity @s NoAI set value 1b

# 話すならIDを割り当てる
execute if data storage reizo_mcfunc_engin:context this{Talk:1b} run function rpg:asset/mob/0007.abstract_npc/init/id_allocate