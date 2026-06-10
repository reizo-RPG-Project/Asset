#> rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/get_hand_item_data
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/_

# 手に持っているアイテムのデータを取得(右手優先！)
    execute if data entity @s SelectedItem run return run data modify storage reizo_mcfunc_engin:context this.Interaction.ItemData set from entity @s SelectedItem.components."minecraft:custom_data".Item.Args.ID
    execute if data entity @s equipment.offhand run return run data modify storage reizo_mcfunc_engin:context this.Interaction.ItemData set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Args.ID