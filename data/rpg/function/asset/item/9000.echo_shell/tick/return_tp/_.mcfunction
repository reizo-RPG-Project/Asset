#> rpg:asset/item/9000.echo_shell/tick/return_tp/_
#
# 
#
# @within function rpg:asset/item/9000.echo_shell/tick/_

# あと何秒か教える(残5sから)
    execute if score @s reizo_mcfunc_Engin.Sneaking matches 100 run return run tellraw @s [{"text":"帰還まで残り: "},{"text":"5秒",color:"white"}]
    execute if score @s reizo_mcfunc_Engin.Sneaking matches 120 run return run tellraw @s [{"text":"帰還まで残り: "},{"text":"4秒",color:"white"}]
    execute if score @s reizo_mcfunc_Engin.Sneaking matches 140 run return run tellraw @s [{"text":"帰還まで残り: "},{"text":"3秒",color:"yellow"}]
    execute if score @s reizo_mcfunc_Engin.Sneaking matches 160 run return run tellraw @s [{"text":"帰還まで残り: "},{"text":"2秒",color:"gold"}]
    execute if score @s reizo_mcfunc_Engin.Sneaking matches 180 run return run tellraw @s [{"text":"帰還まで残り: "},{"text":"1秒",color:"red"}]

# tp
execute if score @s reizo_mcfunc_Engin.Sneaking matches 200 positioned 21 18 -2 run function rpg:asset/item/9000.echo_shell/tick/return_tp/tp