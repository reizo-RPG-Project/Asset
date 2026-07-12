#> rpg:asset/object/0018.moving_platform/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# Field適用
    data modify storage reizo_mcfunc_engin:context this.moveRot set from storage reizo_mcfunc_engin:object Args.moveRot
    data modify storage reizo_mcfunc_engin:context this.Speed set from storage reizo_mcfunc_engin:object Args.Speed
    data modify storage reizo_mcfunc_engin:context this.transitTime set from storage reizo_mcfunc_engin:object Args.transitTime

# block_display召喚
execute align xyz run summon block_display ~ ~ ~ {block_state:{Name:"stone"},teleport_duration:2,Tags:["RPG.Obj.0018.BD"]}

# TT取得
execute store result score @s RPG.Obj.0018.TT run data get storage reizo_mcfunc_engin:context this.transitTime