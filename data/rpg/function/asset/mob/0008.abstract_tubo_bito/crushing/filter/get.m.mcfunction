#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/filter/get.m
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/filter/_

# 乱数から出た値のIndexのデータを取得
$data modify storage reizo_mcfunc_engin:context this.Type set from storage reizo_mcfunc_engin:context this.TypeList[$(rng)]