#> rpg:asset/item/0038.slime_ball/bounce/_
#
# 
#
# @within function rpg:asset/item/0038.slime_ball/trigger/fall

# VecYに-1をかけてベクトルを反転させる(本来は-1だがhb.motionの仕様上10000倍にしなければならないので-10000倍に)
execute store result storage reizo_mcfunc_engin:context this.VecY double 1 run data get storage reizo_mcfunc_engin:context this.VecY -10000

# プレイヤーに適応させる
    # X,Zは変更しないので0に
    scoreboard players set $x hb.Motion 0
    scoreboard players set $z hb.Motion 0
    # ライブラリ引数に反転させたベクトルを渡す
    execute store result score $y hb.Motion run data get storage reizo_mcfunc_engin:context this.VecY
    # ライブラリ使用
    function #p_motion:xyz

# お掃除
data remove storage reizo_mcfunc_engin:context this

# VFX
    particle item_slime ~ ~ ~ 0.3 0.0 0.3 0 10
    playsound block.slime_block.fall