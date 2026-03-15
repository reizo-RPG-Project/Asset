#> rpg:asset/item/0040.abstract_status_up/tick/init/str/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/init/_

# お掃除
execute unless score @s RPG.STR = @s RPG.OriginSTR run scoreboard players operation @s RPG.STR = @s RPG.OriginSTR

# フィールドをスコアに
execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.STR

# 足し算
scoreboard players operation @s RPG.STR += $STR RPG.Item.0040.Temp

# お掃除
scoreboard players reset $STR RPG.Item.0040.Temp