#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/set_rarity
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/_

# セット
execute if predicate rpg:asset/mob/0008/rarity/2 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 2
execute if predicate rpg:asset/mob/0008/rarity/3 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 3
execute if predicate rpg:asset/mob/0008/rarity/4 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 4
execute if predicate rpg:asset/mob/0008/rarity/5 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 5

# どこも引けなかった場合
execute unless data storage reizo_mcfunc_engin:context this.Rarity run data modify storage reizo_mcfunc_engin:context this.Rarity set value 1