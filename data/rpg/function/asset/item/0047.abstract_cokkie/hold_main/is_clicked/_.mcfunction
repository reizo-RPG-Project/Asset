#> rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0047.abstract_cokkie/hold_main/_

# Init
execute unless score @s RPG.Item.0047.NextCount matches 1.. store result score @s RPG.Item.0047.NextCount run data get storage reizo_mcfunc_engin:context data.Field.InitNext

# タグ剥奪
tag @s remove RPG.Item.0047.IsClicked

# スコアアップ
scoreboard players add @s RPG.Item.0047.ClickCount 1

# タイトルで今どのくらい行ったか表示
title @s actionbar {score:{name:"@s",objective:"RPG.Item.0047.ClickCount"}}

#> レベルアップやらなんやら
    # TODO:スコア1で隠し実績を達成するようにして！
    # ｸｯｷｰベーカー見習い(Lv.1)
    execute if score @s RPG.Item.0047.ClickCount = @s RPG.Item.0047.NextCount run function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/check

# Countも1上げる
function reizo_mcfunc_engin:api/item/count/add.m {Slot:"mainhand",Value:1}

# FX
    playsound entity.generic.eat
    execute anchored eyes run particle item{item:"cookie"} ^ ^ ^ 0.5 0.7 0.5 0 25