#> rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/from.m
#
# 
#
# @within function rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/foreach

$item replace entity @p enderchest.$(Slot) from entity @s container.$(Slot)