#> rpg:asset/item/0051.juck_o_luntern/tick/check/is_sneak
#
# 
#
# @within function rpg:asset/item/0051.juck_o_luntern/tick/check/_

# 光源設置
execute align xyz positioned ~0.5 ~1.5 ~0.5 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0011.light",namespace:"rpg"}

# こっちは2tick目から動かない
execute if score @s reizo_mcfunc_Engin.Sneaking matches 2.. run return 0

# アイテムのデータを変える
    item modify entity @s armor.head {function:"set_components",components:{item_model:"minecraft:jack_o_lantern"}}

# ステータスアップ
    scoreboard players add @s RPG.HP_MAX 10
    scoreboard players add @s RPG.DEF 10

# 宣言
data modify storage reizo_mcfunc_engin:context this.ResetInit set value 1b