#> rpg:asset/mob/0002.abstract_enemy/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:api/mob/remove/core/run.m

# 死ぬ前に自分のIDとTagを保存
    data modify storage rpg:mob 0002.IDStackStash append value {Value:0,Tags:[]}
    execute store result storage rpg:mob 0002.IDStackStash[-1].Value int 1 run scoreboard players get @s RPG.Mob.0002.ID
    data modify storage rpg:mob 0002.IDStackStash[-1].Tags set from entity @s Tags

# 死ぬ
kill @s