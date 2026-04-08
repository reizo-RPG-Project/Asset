#> rpg:asset/item/0051.juck_o_luntern/common/reset
#
# 
#
# @within function rpg:asset/item/0051.juck_o_luntern/not_hold/_

# アイテムのデータを変える
    item modify entity @s armor.head {function:"set_components",components:{item_model:"minecraft:carved_pumpkin"}}

# ステータスを戻す
    scoreboard players remove @s RPG.HP_MAX 15
    scoreboard players remove @s RPG.DEF 20

# タグ剥奪
tag @s remove RPG.Item.0051.Is_Sneked