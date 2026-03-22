#> rpg:asset/mob/0002.abstract_enemy/init/id_allocate/id_pool/add_tag/foreach
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/init/id_allocate/id_pool/_

# 先頭をTagsに追加
data modify entity @s Tags append from storage rpg:mob 0002.IDStackStash[-1].Tags[0]

# お掃除
data remove storage rpg:mob 0002.IDStackStash[-1].Tags[0]

# データがまだ残るなら再帰して追加する
execute if data storage rpg:mob 0002.IDStackStash[-1].Tags[0] run function rpg:asset/mob/0002.abstract_enemy/init/id_allocate/id_pool/add_tag/foreach