#> rpg:asset/item/0051.juck_o_luntern/tick/status_up
#
# 
#
# @within function rpg:asset/item/0051.juck_o_luntern/tick/_

# アイテムのデータを変える
    item modify entity @s armor.head {function:"set_components",components:{item_model:"minecraft:jack_o_lantern"}}

# ステータスアップ
    scoreboard players add @s RPG.HP_MAX 15
    scoreboard players add @s RPG.DEF 20

# 宣言
tag @s add RPG.Item.0051.Is_Sneked