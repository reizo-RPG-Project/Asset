#> rpg:asset/item/0040.abstract_status_up/tick/init/int/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/init/_

# お掃除
execute unless score @s RPG.INT = @s RPG.OriginINT run scoreboard players operation @s RPG.INT = @s RPG.OriginINT

# フィールドをスコアに
execute store result score $INT RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.INT

# 足し算
scoreboard players operation @s RPG.INT += $INT RPG.Item.0040.Temp

# お掃除
scoreboard players reset $INT RPG.Item.0040.Temp