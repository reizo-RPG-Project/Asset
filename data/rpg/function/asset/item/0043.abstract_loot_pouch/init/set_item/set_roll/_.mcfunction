#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_roll/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach

# minとmaxがあるならminからmaxの間でランダムに決める
execute if data storage reizo_mcfunc_engin:context this.SetItem.data.Rolls.min if data storage reizo_mcfunc_engin:context this.SetItem.data.Rolls.max run return run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_roll/roll.m with storage reizo_mcfunc_engin:context this.SetItem.data.Rolls

# 普通にintならそのまま取得しておく
execute store result score $Item.0043.SetItem.Rolls RPG.Temp run data get storage reizo_mcfunc_engin:context this.SetItem.data.Rolls