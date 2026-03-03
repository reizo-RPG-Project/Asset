#> rpg:asset/mob/0007.abstract_npc/tick/talk/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/tick/_

# スコアをアップする
function rpg:asset/mob/0007.abstract_npc/tick/talk/add.m with storage reizo_mcfunc_engin:context data.Field

# Talkメソッドの実行
execute at @a[tag=RPG.Mob.0007.Talk] as @p[distance=..01] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"talk/_"}

# タグ剥奪
tag @p[tag=RPG.Mob.0007.Talk] remove RPG.Mob.0007.Talk