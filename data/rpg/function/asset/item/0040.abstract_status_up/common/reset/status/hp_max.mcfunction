#> rpg:asset/item/0040.abstract_status_up/common/reset/status/hp_max
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/common/reset/_

# 値を取得
execute store result score $HP_MAX RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.Equipped.HP_MAX

# リセット
scoreboard players operation @s RPG.Bonus.HP_MAX -= $HP_MAX RPG.Item.0040.Temp

# お掃除
    scoreboard players reset $HP_MAX RPG.Item.0040.Temp
    data remove storage reizo_mcfunc_engin:context this.Equipped.HP_MAX

# ステータスを更新
tag @s add RPG.StatusUpdate