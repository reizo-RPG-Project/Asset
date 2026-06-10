#> rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/find.m
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/interaction/_

$execute as @a[distance=..25,nbt={UUID:$(player)},limit=1] at @s run function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/_