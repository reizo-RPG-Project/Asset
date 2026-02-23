#> rpg:asset/object/0003.abstract_spawner/common/field/delay
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/common/init/field/delay

#> フィールドの適応
    # 敵対時からどれくらいでmobを召喚するか。
        # Init
        execute store result score $min RPG.Obj.0003.In_Hostil.Delay run data get storage reizo_mcfunc_engin:context data.Field.in_hostil.Delay.min
        execute store result score $max RPG.Obj.0003.In_Hostil.Delay run data get storage reizo_mcfunc_engin:context data.Field.in_hostil.Delay.max
        scoreboard players operation $Temp RPG.Obj.0003.In_Hostil.Delay = $max RPG.Obj.0003.In_Hostil.Delay
        # 計算
        scoreboard players operation $Temp RPG.Obj.0003.In_Hostil.Delay -= $min RPG.Obj.0003.In_Hostil.Delay
        scoreboard players operation $Temp RPG.Obj.0003.In_Hostil.Delay /= #2 RPG.Const
        execute unless score $Temp RPG.Obj.0003.In_Hostil.Delay matches 0 run function rpg:asset/object/0003.abstract_spawner/common/field/core/delay/_
        execute if score $Temp RPG.Obj.0003.In_Hostil.Delay matches 0 run scoreboard players set $Delay RPG.Obj.0003.In_Hostil.Delay 0
        # 反映
        scoreboard players operation @s RPG.Obj.0003.In_Hostil.Delay = $max RPG.Obj.0003.In_Hostil.Delay
        # お掃除
        scoreboard players reset $Delay RPG.Obj.0003.In_Hostil.Delay
        scoreboard players reset $Temp RPG.Obj.0003.In_Hostil.Delay
        scoreboard players reset $max RPG.Obj.0003.In_Hostil.Delay
        scoreboard players reset $min RPG.Obj.0003.In_Hostil.Delay