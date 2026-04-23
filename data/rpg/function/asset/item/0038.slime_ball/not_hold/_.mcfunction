#> rpg:asset/item/0038.slime_ball/not_hold/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/not_hold/run.m

# データ取得
data modify storage reizo_mcfunc_engin:context this.SafeFallDistance set from entity @s attributes[{id:"minecraft:safe_fall_distance"}].base

# attributeを元に戻す 100.0 = セットされたSFDの値
execute if data storage reizo_mcfunc_engin:context this{SafeFallDistance:100.0} run attribute @s minecraft:safe_fall_distance base reset

# お掃除
    data remove storage reizo_mcfunc_engin:context this.SafeFallDistance
    data remove storage reizo_mcfunc_engin:context this.VecY