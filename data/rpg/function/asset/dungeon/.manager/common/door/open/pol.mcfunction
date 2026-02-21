#> rpg:asset/dungeon/.manager/common/door/open/pol
#
# 
#
# @within function rpg:asset/dungeon/*/door/open

# 見た目を移動
data modify entity @s transformation.translation set value [0.0f,0.0f,4.0f]

# アニメーション移動時間のセット
data modify entity @s interpolation_duration set value 80

# これは...なんだ？(今度書いとけ。)
data modify entity @s start_interpolation set value 0

# Col用シュルカー召喚メモ
# execute at @e[type=minecraft:block_display] run summon item_display ~0.5 ~ ~0.5 {Tags:["RPG.Dungeon.MoveWall_Col.0001"],Passengers:[{id:"shulker",NoAI:1b,Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]}]}