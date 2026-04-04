#> rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/3/run.m
#
# 
#
# @within function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/check

$function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/3/$(CookieID)

# レベルセット
data modify storage reizo_mcfunc_engin:context this.Lv set value 3

# スコアリセット
scoreboard players reset @s RPG.Item.0047.ClickCount
scoreboard players reset @s RPG.Item.0047.NextCount

# 全クッキー消去
$clear @s diamond_horse_armor[custom_data~{Item:{Field:{CookieID:"$(CookieID)"}}}]