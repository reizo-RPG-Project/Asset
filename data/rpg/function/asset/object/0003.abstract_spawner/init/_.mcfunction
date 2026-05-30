#> rpg/asset/object/0003.abstract_spawner/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# ID割り当て
function reizo_mcfunc_engin:api/id/allocate

# フィールドの適応
    function rpg:asset/object/0003.abstract_spawner/common/field/delay
    execute store result score @s RPG.Obj.0003.HP run data get storage reizo_mcfunc_engin:object Field.HP

# お掃除
data remove storage reizo_mcfunc_engin:context data.Field

# 必要なものを召喚&設置
execute align xyz run function rpg:asset/object/0003.abstract_spawner/init/set