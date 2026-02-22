#> rpg:asset/object/0003.abstract_spawner/init/set
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/init/_

# 見た目召喚
summon block_display ~ ~ ~ {block_state:{Name:"candle",Properties:{candles:"4",lit:"true"}}}

# あたり判定用ブロック設置
setblock ~0.5 ~ ~0.5 barrier