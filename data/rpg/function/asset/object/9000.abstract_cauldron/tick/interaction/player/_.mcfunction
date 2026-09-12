#> rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/_
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/find.m

# 手に持っているアイテムのデータを取得する。
function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/get_hand_item_data

# TODO: 手に持っているアイテムのデータが特定の物だったら...とか。

# データが無かったら
execute unless data storage reizo_mcfunc_engin:context this.Interaction.ItemData run return run function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/fail

# データをリストに追加
data modify storage reizo_mcfunc_engin:context this.Items append from storage reizo_mcfunc_engin:context this.Interaction.ItemData

#> 演出
    # データによって音を変更
        execute store result score $Len RPG.Temp run data get storage reizo_mcfunc_engin:context this.Items
        execute if score $Len RPG.Temp matches 1 run playsound block.anvil.place master @a ~ ~ ~ 0.3 1.7
        execute if score $Len RPG.Temp matches 2 run playsound block.anvil.place master @a ~ ~ ~ 0.3 1.7
        execute if score $Len RPG.Temp matches 3 run playsound block.anvil.place master @a ~ ~ ~ 0.3 2
    # ナベ
        execute as @n[tag=RPG.Obj.9000.AJ] run function aj:cauldron/animations/in/tween {to_frame:0,duration:1}
        execute at @n[type=interaction,tag=reizo_mcfunc_Engin.Object] run particle poof ~ ~ ~ 0.5 0.5 0.5 0 10

# お掃除
scoreboard players reset $Len RPG.Temp

# アイテムの消去
    execute if data entity @s SelectedItem run return run function reizo_mcfunc_engin:api/item/count/remove.m {Slot:"mainhand",Value:1}
    execute if data entity @s equipment.offhand run function reizo_mcfunc_engin:api/item/count/remove.m {Slot:"offhand",Value:1}