#> rpg:asset/mob/0020.fire_fox/tick/calc
#
# 参考: https://qiita.com/komaramune/items/68823dd4dcfdcdda0a0e#上手くいく方法
#
# @within function rpg:asset/mob/0020.fire_fox/tick/_

#> 計算する。(初期値は頭側)
    # 計算用マーカー召喚
    summon marker ~ ~ ~ {Tags:["RPG.Mob.0020.Marker"]}
    # 原点からプレイヤーの向きの真横1ブロックへマーカーを移動
    execute rotated as @e[tag=RPG.Mob.0020.Vehicle,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=RPG.Mob.0020.Marker,limit=1] ^1 ^ ^ ~ ~
    # マーカーの横角度をストレージに代入
    execute store result storage reizo_mcfunc_engin:context this.right_rotation.angle float 0.000001745 run data get entity @e[tag=RPG.Mob.0020.Marker,limit=1] Rotation[0] 10000
    # 回転軸設定
    data modify storage reizo_mcfunc_engin:context this.right_rotation.axis set value [0f,-1f,0f]
    # お掃除
    kill @e[type=marker,tag=RPG.Mob.0020.Marker,limit=1]