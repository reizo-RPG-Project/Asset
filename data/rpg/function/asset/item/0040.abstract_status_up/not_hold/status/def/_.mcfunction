#> rpg:asset/item/0040.abstract_status_up/not_hold/status/def/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# 値を取得
execute store result score $DEF RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Equipped.DEF

# リセット
scoreboard players operation @s RPG.Bonus.DEF -= $DEF RPG.Item.0040.Temp

# お掃除
    scoreboard players reset $DEF RPG.Item.0040.Temp
    data remove storage reizo_mcfunc_engin:context this.Equipped.DEF