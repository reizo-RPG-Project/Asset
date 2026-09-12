#> rpg:asset/object/9000.abstract_cauldron/tick/aj
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/_

# idle状態に戻す
    execute if score @s aj.in.frame matches 15.. run return run function aj:cauldron/animations/idle/play
    execute if score @s aj.out.frame matches 9.. run return run function aj:cauldron/animations/idle/play
    execute if score @s aj.fail.frame matches 20.. run function aj:cauldron/animations/idle/play