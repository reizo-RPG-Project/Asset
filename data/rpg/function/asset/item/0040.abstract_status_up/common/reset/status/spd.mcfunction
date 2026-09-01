#> rpg:asset/item/0040.abstract_status_up/common/reset/status/spd
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/common/reset/_

# 値を取得
execute store result score $SPD RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Equipped.SPD

# リセット
scoreboard players operation @s RPG.Bonus.SPD -= $SPD RPG.Item.0040.Temp

# お掃除
    scoreboard players reset $SPD RPG.Item.0040.Temp
    data remove storage reizo_mcfunc_engin:context this.Equipped.SPD

# ステータスを更新
tag @s add RPG.StatusUpdate