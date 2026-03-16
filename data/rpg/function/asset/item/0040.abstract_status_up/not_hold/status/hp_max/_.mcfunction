#> rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/_

# リセット
    scoreboard players operation @s RPG.HP_MAX = @s RPG.OriginHP_MAX
    tag @s remove RPG.Item.0040.StatusUpped.HP_MAX