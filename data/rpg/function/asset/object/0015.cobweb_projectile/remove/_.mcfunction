#> rpg:asset/object/0015.cobweb_projectile/remove/_
#
# 
#
# @within function rpg:asset/object/0015.cobweb_projectile/tick/set

# キル
kill @s

# ブロック消去
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ cobweb run setblock ~ ~ ~ air
# execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle wax_on

# 消えてるっぽいパーティクル
particle minecraft:poof ~ ~1 ~ 0.05 0.6 0.05 0 5