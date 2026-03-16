#> rpg:asset/item/0040.abstract_status_up/status_up/int/check.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/int/_

# IDが存在するか確認
$execute if data storage reizo_mcfunc_engin:context this.List.INT[{ID:"$(ID)"}] run data modify storage reizo_mcfunc_engin:context this.End set value 1b