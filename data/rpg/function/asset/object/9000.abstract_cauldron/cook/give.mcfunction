#> rpg:asset/object/9000.abstract_cauldron/cook/give
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/cook/_

# アイテム出す
function rpg:asset/object/9000.abstract_cauldron/common/give.m with storage reizo_mcfunc_engin:context this.Cook

# 演出
    playsound entity.item.pickup master @a ~ ~ ~ 0.5 0.75
    particle flame ~ ~ ~ 1 1 1 0.5 10
    execute as @n[tag=RPG.Obj.9000.AJ] run function aj:cauldron/animations/out/tween {to_frame:0,duration:1}