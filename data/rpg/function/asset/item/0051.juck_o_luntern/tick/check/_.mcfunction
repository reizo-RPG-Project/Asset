#> rpg:asset/item/0051.juck_o_luntern/tick/check/_
#
# 
#
# @within function rpg:asset/item/0051.juck_o_luntern/tick/_

# じゃがんだ
execute if score @s reizo_mcfunc_Engin.Sneaking matches 1.. run return run function rpg:asset/item/0051.juck_o_luntern/tick/check/is_sneak

# しゃがんでない
execute unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. if data storage reizo_mcfunc_engin:context this{ResetInit:1b} run function rpg:asset/item/0051.juck_o_luntern/tick/check/is_not_sneak