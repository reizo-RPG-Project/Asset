#> rpg:asset/object/0003.abstract_spawner/common/field/core/delay/roll/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/common/field/core/delay/_

# 取得
execute store result storage reizo_mcfunc_engin:context this.Delay.roll.range int 1 run scoreboard players get $Temp RPG.Obj.0003.In_Hostil.Delay

# ロール
function rpg:asset/object/0003.abstract_spawner/common/field/core/delay/roll/roll.m with storage reizo_mcfunc_engin:context this.Delay.roll