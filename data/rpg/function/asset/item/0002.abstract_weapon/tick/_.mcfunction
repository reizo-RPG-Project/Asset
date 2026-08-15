#> rpg:asset/0002.abstract_weapon/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# AttackSpeed
    execute store result score $Item.0002.AttackChargeTime RPG.Temp run data get storage reizo_mcfunc_engin:context this.AttackChargeTime
    execute if score @s RPG.Item.0002.AttackCharge < $Item.0002.AttackChargeTime RPG.Temp run scoreboard players add @s RPG.Item.0002.AttackCharge 1

# クリックしたな！
execute if entity @s[tag=RPG.Input.IsClicked] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"is_clicked/_"}

# お掃除
scoreboard players reset $Item.0002.AttackChargeTime

# function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}