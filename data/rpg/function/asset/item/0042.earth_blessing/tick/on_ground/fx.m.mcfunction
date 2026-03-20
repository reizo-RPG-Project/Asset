#> rpg:asset/item/0042.earth_blessing/tick/on_ground/fx.m
#
# 動的に表示するブロックパーティクルのブロックを変更するマクロ
#
# @within function rpg:asset/item/0042.earth_blessing/tick/on_ground/_

$particle block{block_state:"$(block_name)"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal @a[distance=..10]