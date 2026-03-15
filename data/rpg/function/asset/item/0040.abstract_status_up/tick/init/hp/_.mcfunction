#> rpg:asset/item/0040.abstract_status_up/tick/init/hp/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/init/_

# お掃除
execute unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX run scoreboard players operation @s RPG.HP_MAX = @s RPG.OriginHP_MAX

# フィールドをスコアに
execute store result score $HP RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context data.Field.HP

# 足し算
scoreboard players operation @s RPG.HP_MAX += $HP RPG.Item.0040.Temp

# お掃除
scoreboard players reset $HP RPG.Item.0040.Temp