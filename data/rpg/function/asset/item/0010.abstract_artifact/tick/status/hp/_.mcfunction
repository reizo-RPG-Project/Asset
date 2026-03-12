#> rpg:asset/item/0010.abstract_artifact/tick/status/hp/_
#
# 
#
# @within function rpg:asset/item/0010.abstract_artifact/tick/_

# お掃除
execute unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX run scoreboard players operation @s RPG.HP_MAX = @s RPG.OriginHP_MAX

# フィールドをスコアに
execute store result score $HP RPG.Item.0010.Status run data get storage reizo_mcfunc_engin:context data.Field.HP

# 足し算
scoreboard players operation @s RPG.HP_MAX += $HP RPG.Item.0010.Status

# お掃除
scoreboard players reset $HP RPG.Item.0010.Status