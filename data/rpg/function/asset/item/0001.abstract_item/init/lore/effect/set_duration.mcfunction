#> rpg:asset/item/0001.abstract_item/init/lore/effect/set_duration
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/lore/effect/foreach

# Durationが1だった場合は無し
execute if data storage reizo_mcfunc_engin:effect Register{Duration:1} run return 0

# Duration取得
execute store result score $Duration RPG.Temp run data get storage reizo_mcfunc_engin:effect Register.Duration

# 1tickが1/20秒なので1/20する。
    scoreboard players operation $DurationSecond RPG.Temp = $Duration RPG.Temp
    scoreboard players operation $DurationSecond RPG.Temp /= #20 RPG.Const

# 1分が60秒なので1/60する。
    scoreboard players operation $DurationMinute RPG.Temp = $DurationSecond RPG.Temp
    scoreboard players operation $DurationMinute RPG.Temp /= #60 RPG.Const

# 説明文構成
    data modify storage reizo_mcfunc_engin:context this.EffectLore.Duration set value [{text:"(",color:"white",italic:0b},"0",":","0",")"]
    execute store result storage reizo_mcfunc_engin:context this.EffectLore.Duration[1] int 1 run scoreboard players get $DurationMinute RPG.Temp
    execute store result storage reizo_mcfunc_engin:context this.EffectLore.Duration[3] int 1 run scoreboard players get $DurationSecond RPG.Temp