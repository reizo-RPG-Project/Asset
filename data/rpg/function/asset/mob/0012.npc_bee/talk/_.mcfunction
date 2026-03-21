#> rpg:asset/mob/0012.npc_bee/talk/_
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/register

# 最初にデータがないなら1..100の間でrandomに値を生成して出すテキストを決める
execute unless score @s RPG.Mob.0012.Talk.RNG matches 1..100 store result score @s RPG.Mob.0012.Talk.RNG run random value 1..100

# 値によって出すテキストを決める
    execute if score @s RPG.Mob.0012.Talk.RNG matches 1..33 run return run function rpg:asset/mob/0012.npc_bee/talk/text/0
    execute if score @s RPG.Mob.0012.Talk.RNG matches 34..66 run return run function rpg:asset/mob/0012.npc_bee/talk/text/1
    execute if score @s RPG.Mob.0012.Talk.RNG matches 67..99 run return run function rpg:asset/mob/0012.npc_bee/talk/text/2
    execute if score @s RPG.Mob.0012.Talk.RNG matches 100 run return run function rpg:asset/mob/0012.npc_bee/talk/text/3