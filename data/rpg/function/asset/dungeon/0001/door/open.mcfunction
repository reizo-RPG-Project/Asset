#> rpg:asset/dungeon/0001/door/open
#
# 
#
# @public

# ドアがすでに開けられているのなら動かない
execute if data storage rpg:dungeon 0001{Closed_Door:0b,Opend_Door:1b} run return 0

# セット
data modify storage rpg:dungeon 0001 set value {Closed_Door:0b,Opend_Door:1b}

# 描画ディスプレイに関する処理
execute positioned 4 21 -13 as @e[type=block_display,limit=12,distance=..3,tag=RPG.Dungeon.MoveWall.0001] unless data entity @s transformation{translation:[0.0f,0.0f,4.0f]} at @s run function rpg:asset/dungeon/.manager/common/door/open/pol

# 移動当たり判定ディスプレイの開始
scoreboard players set $0001.MoveWall.Col RPG.Dungeon 0