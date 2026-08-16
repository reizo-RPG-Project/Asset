#> rpg:asset/object/0018.moving_platform/tick/turn
#
# 
#
# @within function rpg:asset/object/0018.moving_platform/tick/_

# TTを戻す
execute store result score @s RPG.Obj.0018.TT run data get storage reizo_mcfunc_engin:context this.transitTime

# マイナスにしてセット
execute store result storage reizo_mcfunc_engin:context this.Speed float -0.0001 run data get storage reizo_mcfunc_engin:context this.Speed 10000

# ターン時に動く方向が変わるので再計算
execute store result storage reizo_mcfunc_engin:context this.pMotion double 0.4133 run data get storage reizo_mcfunc_engin:context this.Speed 10000