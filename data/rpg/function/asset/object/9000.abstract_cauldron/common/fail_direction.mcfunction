#> rpg:asset/object/9000.abstract_cauldron/common/fail_direction
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/cook/fail

# 演出
    playsound block.note_block.bass master @a ~ ~ ~ 0.5 0.75
    particle dust{color:[0,0,0],scale:1.5} ~ ~ ~ 1.25 1 1.25 0.5 10
    execute as @n[tag=RPG.Obj.9000.AJ] run function aj:cauldron/animations/fail/tween {to_frame:0,duration:1}