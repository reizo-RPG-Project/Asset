#> rpg:asset/item/0040.abstract_status_up/tick/init/def/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/init/_

# お掃除
execute unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF

# フィールドをスコアに
execute store result score $DEF RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.DEF

# 足し算
scoreboard players operation @s RPG.DEF += $DEF RPG.Item.0040.Temp

# お掃除
scoreboard players reset $DEF RPG.Item.0040.Temp