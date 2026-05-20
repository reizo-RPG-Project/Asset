#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/get_data/roll.m
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/get_data/_

# Indexをマクロで指定し、必要なデータを取得
$data modify storage reizo_mcfunc_engin:context this.Items.Type set from storage reizo_mcfunc_engin:context this.Items[$(Type)]