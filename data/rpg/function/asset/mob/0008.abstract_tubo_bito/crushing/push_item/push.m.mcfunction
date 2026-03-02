#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/push.m
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/_

#
$execute anchored eyes positioned ^ ^ ^ run function reizo_mcfunc_engin:api/item/give.m {ID:"$(ID)",namespace:"rpg"}

# 音
playsound block.note_block.bell master @a ~ ~ ~