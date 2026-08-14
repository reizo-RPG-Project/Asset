#> rpg:asset/item/0040.abstract_status_up/common/reset/status/str
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/common/reset/_

# 値を取得
execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Equipped.STR

# リセット
scoreboard players operation @s RPG.Bonus.STR -= $STR RPG.Item.0040.Temp

# お掃除
    scoreboard players reset $STR RPG.Item.0040.Temp
    data remove storage reizo_mcfunc_engin:context this.Equipped.STR

# ステータスを更新
tag @s add RPG.StatusUpdate