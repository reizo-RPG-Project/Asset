#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/set_rarity
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/_

# セット
execute if data storage reizo_mcfunc_engin:context this.Items.Type[{Rarity:2}] if predicate rpg:asset/mob/0008/rarity/2 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 2
execute if data storage reizo_mcfunc_engin:context this.Items.Type[{Rarity:3}] if predicate rpg:asset/mob/0008/rarity/3 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 3
execute if data storage reizo_mcfunc_engin:context this.Items.Type[{Rarity:4}] if predicate rpg:asset/mob/0008/rarity/4 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 4
execute if data storage reizo_mcfunc_engin:context this.Items.Type[{Rarity:5}] if predicate rpg:asset/mob/0008/rarity/5 run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 5

# どこも引けなかった場合
execute unless data storage reizo_mcfunc_engin:context this{Recursive:1b} if data storage reizo_mcfunc_engin:context this.Items.Type[{Rarity:1}] unless data storage reizo_mcfunc_engin:context this.Rarity run return run data modify storage reizo_mcfunc_engin:context this.Rarity set value 1

# レア度1のアイテムがなかった場合再帰する。
execute unless data storage reizo_mcfunc_engin:context this.Rarity run function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/set_rarity