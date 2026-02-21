#> rpg:asset/dungeon/0001/door/close
#
# 
#
# @public

# ドアが開けられていないのなら動かない。
execute if data storage rpg:dungeon 0001{Closed_Door:0b} run return 0

# 元の場所に戻す
    execute positioned 4 21 -13 as @e[type=block_display,limit=12,distance=..3,tag=RPG.Dungeon.MoveWall.0001] at @s run function rpg:asset/dungeon/.manager/common/door/close/pol
    execute as @e[type=minecraft:item_display,limit=12,tag=RPG.Dungeon.MoveWall_Col.0001] at @s run tp @s ~ ~ ~-3

# ドアを開けてないことを示す
data modify storage rpg:dungeon 0001.Opend_Door set value 0b
data modify storage rpg:dungeon 0001.Closed_Door set value 1b

# シュルカー移動タイマーの終わり。
scoreboard players set $0001.MoveWall.Col RPG.Dungeon -1