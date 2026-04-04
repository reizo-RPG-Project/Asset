#> rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0047.abstract_cokkie/hold_main/_

# タグ剥奪
tag @s remove RPG.Item.0047.IsClicked

# スコアアップ
scoreboard players add @s RPG.Item.0047.ClickCount 1

# タイトルで今どのくらい行ったか表示
title @s actionbar {score:{name:"@s",objective:"RPG.Item.0047.ClickCount"}}

# Countも1上げる
function reizo_mcfunc_engin:api/item/count/add.m {Slot:"mainhand",Value:1}

# FX
    playsound entity.generic.eat
    execute anchored eyes run particle item{item:"cookie"} ^ ^ ^ 0.5 0.7 0.5 0 25