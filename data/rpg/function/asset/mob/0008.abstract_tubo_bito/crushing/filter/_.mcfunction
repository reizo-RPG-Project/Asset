#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/filter/_
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/_

# 乱数
execute store result storage reizo_mcfunc_engin:context this.Filter.rng int 1 run random value 0..3

# 出てきた乱数から取得するデータを選択
function rpg:asset/mob/0008.abstract_tubo_bito/crushing/filter/get.m with storage reizo_mcfunc_engin:context this.Filter