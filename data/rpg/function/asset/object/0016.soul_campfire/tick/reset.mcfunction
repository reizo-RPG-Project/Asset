#> rpg:asset/object/0016.soul_campfire/tick/reset
#
# 
#
# @within function rpg:asset/object/0016.soul_campfire/tick/_

# タグ剥奪
tag @s remove RPG.Obj.0016.Player

# regenダウン
scoreboard players remove @s RPG.HP_regen 25