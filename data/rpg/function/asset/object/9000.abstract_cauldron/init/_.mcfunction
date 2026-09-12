#> rpg:asset/object/9000.abstract_cauldron/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# 焚火設置
setblock ~ ~ ~ campfire

# AJモデル設置
    execute positioned ~ ~0.5 ~ run function aj:cauldron/summon {args:{}}
    execute as @n[type=item_display,tag=aj.cauldron.root] run function aj:cauldron/animations/idle/play