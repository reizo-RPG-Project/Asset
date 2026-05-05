#> rpg:asset/mob/0002.abstract_enemy/init/id_allocate/id_pool/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/init/id_allocate/_

# 値をセット
execute store result score @s RPG.Mob.0002.ID run data get storage rpg:mob 0002.IDStackStash[-1].Value

# 既存のタグに干渉しないように追加する
data modify entity @s Tags append from storage rpg:mob 0002.IDStackStash[-1].Tags[]

# お掃除
data remove storage rpg:mob 0002.IDStackStash[-1]