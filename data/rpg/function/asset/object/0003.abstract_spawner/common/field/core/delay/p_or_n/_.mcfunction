#> rpg:asset/object/0003.abstract_spawner/common/field/core/delay/p_or_n/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/common/field/core/delay/_

# 準備
    scoreboard players operation $max RPG.Obj.0003.In_Hostil.Delay += $min RPG.Obj.0003.In_Hostil.Delay
    scoreboard players operation $max RPG.Obj.0003.In_Hostil.Delay /= #2 RPG.Const

# addかremoveかを決めるroll
    execute store result storage reizo_mcfunc_engin:context this.Delay.roll.p_or_n int 1 run random value 0..1

# 計算させてくれMy Father!
    execute if data storage reizo_mcfunc_engin:context this.Delay.roll{p_or_n:0} run return run scoreboard players operation $max RPG.Obj.0003.In_Hostil.Delay += $random RPG.Obj.0003.In_Hostil.Delay
    scoreboard players operation $max RPG.Obj.0003.In_Hostil.Delay -= $random RPG.Obj.0003.In_Hostil.Delay