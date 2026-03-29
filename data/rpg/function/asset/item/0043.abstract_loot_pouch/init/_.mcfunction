#> rpg:asset/item/0043.abstract_loot_pouch/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# 置くアイテムを決める
function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/_

# ID割り当て
execute store result storage reizo_mcfunc_engin:context this.ID int 1 run scoreboard players add $Core RPG.Obj.0009.ScoreID 1