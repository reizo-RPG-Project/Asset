#> rpg:asset/object/0009.loot_chest/remove/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/not_hold/_

# リセット
    scoreboard players reset @p RPG.Obj.0009.Open.Close_Check_Time
    tag @p remove RPG.Obj.0009.Open.CloseCheck

# 死への動作
    tp @s ~ ~-1000 ~
    execute on passengers run kill @s
    kill @s