#> rpg:asset/0043.abstract_loot_pouch/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# オブジェクトの召喚
execute if entity @s[tag=!RPG.Obj.0009.Open] positioned ~ ~1.1 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0009.loot_chest",namespace:"rpg"}