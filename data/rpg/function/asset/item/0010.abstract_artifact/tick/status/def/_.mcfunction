#> rpg:asset/item/0010.abstract_artifact/tick/status/def/_
#
# 
#
# @within function rpg:asset/item/0010.abstract_artifact/tick/_

# お掃除
execute unless score @s RPG.DEF = @s RPG.OriginDEF run scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF

# フィールドをスコアに
execute store result score $DEF RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.DEF

# 足し算
scoreboard players operation @s RPG.DEF += $DEF RPG.Item.0010.Status

# お掃除
scoreboard players reset $DEF RPG.Item.0010.Status