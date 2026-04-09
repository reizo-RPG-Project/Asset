#> rpg:asset/0052.ender_pouch/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# エンダーチェストの中身を移すオブジェクトを召喚
execute unless data entity @s SelectedItem.components."minecraft:custom_data".Item.Registry.Extends[{ID:"0002.abstract_weapon"}] if entity @s[tag=!RPG.Obj.0012.Open] positioned ~ ~1.1 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0012.ender_pouch_storage",namespace:"rpg"}

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}