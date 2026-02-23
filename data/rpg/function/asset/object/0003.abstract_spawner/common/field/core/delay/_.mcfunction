#> rpg:asset/object/0003.abstract_spawner/common/field/core/delay/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/common/field/delay

# 計算
function rpg:asset/object/0003.abstract_spawner/common/field/core/delay/roll/_
function rpg:asset/object/0003.abstract_spawner/common/field/core/delay/p_or_n/_

# セット
scoreboard players operation $Delay RPG.Obj.0003.In_Hostil.Delay = $max RPG.Obj.0003.In_Hostil.Delay

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Delay
    scoreboard players reset $random RPG.Obj.0003.In_Hostil.Delay