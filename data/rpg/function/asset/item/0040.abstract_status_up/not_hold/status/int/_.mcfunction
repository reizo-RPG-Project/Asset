#> rpg:asset/item/0040.abstract_status_up/not_hold/status/int/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# 足した分をスコアにする
execute store result score $INT RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Cache.INT

# 足した分引く
scoreboard players operation @s RPG.INT -= $INT RPG.Item.0040.Temp

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Cache.INT
    scoreboard players reset $INT RPG.Item.0040.Temp