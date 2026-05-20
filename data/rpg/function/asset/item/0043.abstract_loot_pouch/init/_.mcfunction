#> rpg:asset/item/0043.abstract_loot_pouch/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# ID割り当て
execute store result storage reizo_mcfunc_engin:context this.ItemID int 1 run scoreboard players add $Core RPG.Item.0043.ID 1

# 置くアイテムを決める
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/foreach