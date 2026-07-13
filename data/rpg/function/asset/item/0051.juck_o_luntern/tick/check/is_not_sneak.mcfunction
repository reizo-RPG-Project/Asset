#> rpg:asset/item/0051.juck_o_luntern/tick/check/is_not_sneak
#
# 
#
# @within function rpg:asset/item/0051.juck_o_luntern/tick/check/_

# 見た目を戻す
item modify entity @s armor.head {function:"set_components",components:{item_model:"minecraft:carved_pumpkin"}}

# ステータスを戻す
    scoreboard players remove @s RPG.Bonus.HP_MAX 10
    scoreboard players remove @s RPG.Bonus.DEF 10

# お掃除
data remove storage reizo_mcfunc_engin:context this.ResetInit