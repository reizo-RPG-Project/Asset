#> rpg:asset/mob/0012.npc_bee/init/_
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/register

# 透明化
effect give @s invisibility infinite 1 true

# ハチを召喚
summon bee ~ ~1 ~ {Tags:["RPG.Mob.0012.Bee"],NoAI:1b,Team:"NoCol",attributes:[{id:"scale",base:0.7}]}