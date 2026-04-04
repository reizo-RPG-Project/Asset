#> rpg:asset/item/0047.abstract_cokkie/hold_main/_
#
# 
#
# @within function rpg:asset/item/0047.abstract_cokkie/tick/_

# クリック検知用オブジェクトの召喚
function rpg:asset/item/0047.abstract_cokkie/hold_main/summon_click_detection

# クリックしたな！
execute if entity @s[tag=RPG.Item.0047.IsClicked] run function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/_