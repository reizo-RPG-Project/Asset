#> rpg:asset/object/0003.abstract_spawner/in_hostil/summon/foreach
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/summon/_

# 先頭取得
data modify storage reizo_mcfunc_engin:context this.SpawnMob.ID set from storage reizo_mcfunc_engin:context data.Field.SpawnMob[0]

# 召喚
    data modify storage reizo_mcfunc_engin:lib In.For.LoopCount set from storage reizo_mcfunc_engin:context data.Field.SpawnCount
    data modify storage reizo_mcfunc_engin:lib In.For.func set value "rpg:asset/object/0003.abstract_spawner/in_hostil/summon/summon.m with storage reizo_mcfunc_engin:context this.SpawnMob"
    execute positioned ~ ~1 ~ run function reizo_libs:for/_

# お掃除
    data remove storage reizo_mcfunc_engin:context this.SpawnMob.ID
    data remove storage reizo_mcfunc_engin:context data.Field.SpawnMob[0]

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context data.Field.SpawnMob[0] run function rpg:asset/object/0003.abstract_spawner/in_hostil/summon/foreach