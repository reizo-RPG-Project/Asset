#> rpg:asset/mob/0007.abstract_npc/talk/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/tick/_

# 0
execute if score @s RPG.Mob.0007.Talk matches 0 run tellraw @a [{"text":"<reizou_00> "},{"text":"このメッセージはでないはずだよ。"}]