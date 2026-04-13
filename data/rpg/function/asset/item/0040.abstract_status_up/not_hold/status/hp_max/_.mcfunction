#> rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# 足した分をスコアにする
execute store result score $HP_MAX RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Cache.HP_MAX

# 足した分引く
scoreboard players operation @s RPG.HP_MAX -= $HP_MAX RPG.Item.0040.Temp

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Cache.HP_MAX
    scoreboard players reset $HP_MAX RPG.Item.0040.Temp