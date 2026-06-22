#> rpg:asset/object/0017.jukebox/playing/player
#
# 
#
# @within function rpg:asset/object/0017.jukebox/playing/_

# 一定期間で音符を出す
    scoreboard players operation $Temp RPG.Obj.0017.Length = @s RPG.Obj.0017.Length
    scoreboard players operation $Temp RPG.Obj.0017.Length %= #10 RPG.Const
    execute if score $Temp RPG.Obj.0017.Length matches 0 run particle note ~ ~1 ~ 0.0 0.1 0.0 1 1
    scoreboard players reset $Temp RPG.Obj.0017.Length

# ループ再生
    execute if score @s RPG.Obj.0017.Length matches 1.. run return run scoreboard players remove @s RPG.Obj.0017.Length 1
    execute if score @s RPG.Obj.0017.Length matches 0 run function rpg:asset/object/0017.jukebox/common/play.m with storage reizo_mcfunc_engin:context this.PlayingRecordData