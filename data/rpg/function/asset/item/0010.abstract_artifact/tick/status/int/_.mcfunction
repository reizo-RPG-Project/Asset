#> rpg:asset/item/0010.abstract_artifact/tick/status/int/_
#
# 
#
# @within function rpg:asset/item/0010.abstract_artifact/tick/_

# フィールドをスコアに
execute store result score $INT RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.INT

# 足し算
scoreboard players operation @s RPG.INT += $INT RPG.Item.0010.Status

# お掃除
scoreboard players reset $INT RPG.Item.0010.Status