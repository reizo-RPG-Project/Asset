#> rpg:asset/item/0051.juck_o_luntern/tick/check/is_sneak
#
# 
#
# @within function rpg:asset/item/0051.juck_o_luntern/tick/check/_

# エフェクト付与
function reizo_mcfunc_engin:api/effect/give.m {ID:"0006.light_of_jack_o_lantern",namespace:"rpg"}

# こっちは2tick目から動かない
execute if score @s reizo_mcfunc_Engin.Sneaking matches 2.. run return 0

# アイテムのデータを変える
item modify entity @s armor.head {function:"set_components",components:{item_model:"minecraft:jack_o_lantern"}}

# 宣言
data modify storage reizo_mcfunc_engin:context this.ResetInit set value 1b