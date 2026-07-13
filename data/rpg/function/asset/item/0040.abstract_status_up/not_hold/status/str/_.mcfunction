#> rpg:asset/item/0040.abstract_status_up/not_hold/status/str/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# 値を取得
execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Equipped.STR

# リセット
scoreboard players operation @s RPG.Bonus.STR -= $STR RPG.Item.0040.Temp

# お掃除
    scoreboard players reset $STR RPG.Item.0040.Temp
    data remove storage reizo_mcfunc_engin:context this.Equipped.STR

# ステータスを更新
tag @s add RPG.StatusUpdate