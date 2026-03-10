#> rpg:asset/item/0010.abstract_artifact/tick/status/str/_
#
# 
#
# @within function rpg:asset/item/0010.abstract_artifact/tick/_

# フィールドをスコアに
execute store result score $STR RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.STR

# 足し算
scoreboard players operation @s RPG.STR += $STR RPG.Item.0010.Status

# お掃除
scoreboard players reset $STR RPG.Item.0010.Status