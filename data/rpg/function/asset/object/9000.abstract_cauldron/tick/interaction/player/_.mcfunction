#> rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/_
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/find.m

# 手に持っているアイテムのデータを取得する。
function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/get_hand_item_data

# TODO: 手に持っているアイテムのデータが特定の物だったら...とか。

# データをリストに追加
data modify storage reizo_mcfunc_engin:context this.Items append from storage reizo_mcfunc_engin:context this.Interaction.ItemData

# アイテムの消去
    execute if data entity @s SelectedItem run return run function reizo_mcfunc_engin:api/item/count/remove.m {Slot:"mainhand",Value:1}
    execute if data entity @s equipment.offhand run function reizo_mcfunc_engin:api/item/count/remove.m {Slot:"offhand",Value:1}