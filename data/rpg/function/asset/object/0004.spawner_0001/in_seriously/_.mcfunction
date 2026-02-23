#> rpg:asset/object/0004.spawner_0001/in_seriously/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/_

# タグ剥奪
tag @s remove RPG.Obj.0003.in_seriously

# 追加mobをリストに追加する
    # 子供ゾンビ:0006 (すでに子供ゾンビはいるが二体目を追加しておく。)
    data modify entity @s data.Field.SpawnMob append value "0006.zombie_kid"
    # 盗賊:0004
    data modify entity @s data.Field.SpawnMob append value "0004.thief"