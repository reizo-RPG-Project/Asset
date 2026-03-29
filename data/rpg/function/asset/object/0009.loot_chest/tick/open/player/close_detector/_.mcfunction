#> rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/_
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/tick/open/player/_

# 開いてから30tick経つまでは検知しない。
execute unless score @s RPG.Obj.0009.Open.Close_Check_Time = $CloseCheckTime RPG.Obj.0009.Open.Close_Check_Time run return run scoreboard players add @s RPG.Obj.0009.Open.Close_Check_Time 1

# x軸かz軸に少しでも動いたらリセット
execute if predicate {condition:"entity_properties",entity:"this",predicate:{movement:{speed:{min:0.01}}}} run function rpg:asset/object/0009.loot_chest/tick/open/player/close_detector/reset