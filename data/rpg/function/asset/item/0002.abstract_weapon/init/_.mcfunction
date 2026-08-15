#> rpg:asset/item/0002.abstract_weapon/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# AttackSpeedのセット
    data modify entity @s Item.components."minecraft:attribute_modifiers" append value {type:"attack_speed",amount:0,id:"minecraft:",slot:"mainhand",operation:"add_value"}
    data modify entity @s Item.components."minecraft:attribute_modifiers"[-1].amount set from storage reizo_mcfunc_engin:item Field.AttackSpeed

# 左クリック検知に必要なデータをセット
    data modify entity @s Item.components."minecraft:enchantments"."rpg:asset/item/0002/left_click_detection" set value 1
    data modify entity @s Item.components."minecraft:piercing_weapon" set value {}

# 大体溜まるまでの時間を計算
    execute store result score $Item.0002.AttackSpeed100 RPG.Temp run data get storage reizo_mcfunc_engin:context this.AttackSpeed 100
    scoreboard players add $Item.0002.AttackSpeed100 RPG.Temp 400
    scoreboard players operation $Item.0002.AttackChargeTime RPG.Temp = #2000 RPG.Const
    scoreboard players operation $Item.0002.AttackSpeed100 RPG.Temp /= #2 RPG.Const
    scoreboard players operation $Item.0002.AttackChargeTime RPG.Temp += $Item.0002.AttackSpeed100 RPG.Temp
    scoreboard players operation $Item.0002.AttackSpeed100 RPG.Temp *= #2 RPG.Const
    scoreboard players operation $Item.0002.AttackChargeTime RPG.Temp /= $Item.0002.AttackSpeed100 RPG.Temp
    execute store result storage reizo_mcfunc_engin:context this.AttackChargeTime int 1 run scoreboard players get $Item.0002.AttackChargeTime RPG.Temp


# お掃除
    scoreboard players reset $Item.0002.AttackChargeTime RPG.Temp
    scoreboard players reset $Item.0002.AttackSpeed100 RPG.Temp
    scoreboard players reset $Player.AttackSpeed