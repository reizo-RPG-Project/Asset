#> rpg/asset/mob/0007.abstract_npc/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 近くのプレイヤーの方に向く
execute if entity @p[distance=..6] run tp @s ~ ~ ~ facing entity @p[distance=..6]

# Talkタグがないと動かない
execute unless entity @s[tag=RPG.Mob.0007.Talk] run return 0

# スコアアップ
scoreboard players add @s RPG.Mob.0007.Talk 1

# Talkメソッド
execute if score @s RPG.Mob.0007.Talk matches 0.. run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"talk/_"}