#> rpg:asset/item/0040.abstract_status_up/status_up/hp_max/check.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/_

# IDが存在するか確認
$execute if data storage reizo_mcfunc_engin:context this.List.HP_MAX[{ID:"$(ID)"}] run data modify storage reizo_mcfunc_engin:context this.End set value 1b