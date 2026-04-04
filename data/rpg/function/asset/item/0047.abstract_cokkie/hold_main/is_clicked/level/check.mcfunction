#> rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/check
#
# 
#
# @within function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/_

# Lv1
execute if data storage reizo_mcfunc_engin:context this{Lv:0} run return run \
function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/1/run.m with storage reizo_mcfunc_engin:context data.Field

# Lv2
execute if data storage reizo_mcfunc_engin:context this{Lv:1} run return run \
function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/2/run.m with storage reizo_mcfunc_engin:context data.Field

# Lv3
execute if data storage reizo_mcfunc_engin:context this{Lv:2} run \
function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/3/run.m with storage reizo_mcfunc_engin:context data.Field