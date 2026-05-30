#> rpg:asset/object/0003.abstract_spawner/in_hostil/summon/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/in_hostil/_

# 炎パーティクル
    particle flame ~ ~0.1 ~ 0.3 0.3 0.3 0 10

# 召喚したことを宣言する
tag @s add RPG.Obj.0003.Summoned

# 退避
data modify storage reizo_mcfunc_engin:context this.foreach.SpawnMob set from storage reizo_mcfunc_engin:context this.SpawnMob

# mobを再帰的に召喚する
function rpg:asset/object/0003.abstract_spawner/in_hostil/summon/foreach

# Delayの計算しなおし
function rpg:asset/object/0003.abstract_spawner/common/field/delay