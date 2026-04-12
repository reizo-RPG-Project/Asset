#> rpg:asset/mob/0005.sub_rogue/common/check
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/common/_

# スコアによって変える
execute if score @s RPG.Mob.0005.Summon matches 1 run return run function rpg:asset/mob/0005.sub_rogue/in_hostile/summon/type/1
execute if score @s RPG.Mob.0005.Summon matches 2 run return run function rpg:asset/mob/0005.sub_rogue/in_hostile/summon/type/2
execute if score @s RPG.Mob.0005.Summon matches 3 run return run function rpg:asset/mob/0005.sub_rogue/in_hostile/summon/type/3