#> rpg:asset/object/9000.abstract_cauldron/common/give.m
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/give_back/foreach

# アイテムの取得
$function reizo_mcfunc_engin:api/item/give.m {ID:"$(ItemID)",namespace:"rpg"}