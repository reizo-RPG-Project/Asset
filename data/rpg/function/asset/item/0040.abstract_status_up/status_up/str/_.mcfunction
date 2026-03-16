#> rpg:asset/item/0040.abstract_status_up/status_up/str/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# フィールドをスコアに
execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.STR

# 足し算
scoreboard players operation @s RPG.STR += $STR RPG.Item.0040.Temp

# お掃除
scoreboard players reset $STR RPG.Item.0040.Temp

# 実行したことを宣言
tag @s add RPG.Item.0040.StatusUpped.STR