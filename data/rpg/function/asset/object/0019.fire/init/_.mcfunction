#> rpg:asset/object/0019.fire/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# 代入
    execute store result score @s RPG.FireDMG run data get storage reizo_mcfunc_engin:object Args.FireDMG
    data remove storage reizo_mcfunc_engin:object Args

# 火を置く
setblock ~ ~ ~ fire