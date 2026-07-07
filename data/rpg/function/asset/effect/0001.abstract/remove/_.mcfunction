#> rpg:asset/effect/0001.abstract/remove/_
#
# 
#
# @within function rpg:asset/effect/0001.abstract/init/_

#> ステータスリセット
    # HP_MAX
    execute store result score $HP_MAX RPG.Temp run data get storage reizo_mcfunc_engin:context this.HP_MAX
    scoreboard players operation @s RPG.HP_MAX -= $HP_MAX RPG.Temp
    # HP_regen
    execute store result score $HP_regen RPG.Temp run data get storage reizo_mcfunc_engin:context this.HP_regen
    scoreboard players operation @s RPG.HP_regen -= $HP_regen RPG.Temp
    # MP_MAX
    execute store result score $MP_MAX RPG.Temp run data get storage reizo_mcfunc_engin:context this.MP_MAX
    scoreboard players operation @s RPG.MP_MAX -= $MP_MAX RPG.Temp
    # MP_regen
    execute store result score $MP_regen RPG.Temp run data get storage reizo_mcfunc_engin:context this.MP_regen
    scoreboard players operation @s RPG.MP_regen -= $MP_regen RPG.Temp
    # DEF
    execute store result score $DEF RPG.Temp run data get storage reizo_mcfunc_engin:context this.DEF
    scoreboard players operation @s RPG.DEF -= $DEF RPG.Temp
    # STR
    execute store result score $STR RPG.Temp run data get storage reizo_mcfunc_engin:context this.STR
    scoreboard players operation @s RPG.STR -= $STR RPG.Temp
    # INT
    execute store result score $INT RPG.Temp run data get storage reizo_mcfunc_engin:context this.INT
    scoreboard players operation @s RPG.INT -= $INT RPG.Temp
    # お掃除
    scoreboard players reset $HP_MAX
    scoreboard players reset $HP_regen
    scoreboard players reset $MP_MAX
    scoreboard players reset $MP_regen
    scoreboard players reset $DEF
    scoreboard players reset $STR
    scoreboard players reset $INT