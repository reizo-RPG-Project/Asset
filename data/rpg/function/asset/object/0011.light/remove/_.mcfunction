#> rpg:asset/object/0011.light/remove/_
#
# 
#
# @within function rpg:asset/object/0011.light/tick/_

# ブロック
execute if block ~ ~ ~ light run setblock ~ ~ ~ air

# 死ぬ
kill @s