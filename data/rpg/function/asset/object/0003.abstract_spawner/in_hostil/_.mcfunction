#> rpg:asset/object/0003.abstract_spawner/in_hostil/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/tick/_

# パーティクル
execute if entity @a[distance=..10] run function rpg:asset/object/0003.abstract_spawner/in_hostil/particle

# Init
execute unless data storage reizo_mcfunc_engin:context this.in_hostil{Inited:1b} run function rpg:asset/object/0003.abstract_spawner/in_hostil/init