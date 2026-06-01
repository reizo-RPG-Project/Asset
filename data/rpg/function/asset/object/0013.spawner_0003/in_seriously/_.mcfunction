#> rpg:asset/object/0013.spawner_0003/in_seriously/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/_

# タグ剥奪
tag @s remove RPG.Obj.0003.in_seriously

# 子供ゾンビ:0006を削除
data remove storage reizo_mcfunc_engin:context this.SpawnMob[0]

# 追加mobをリストに追加する
    # ブロックイータァ:0016
    data modify storage reizo_mcfunc_engin:context this.SpawnMob append value "0016.block_eater_chaser"