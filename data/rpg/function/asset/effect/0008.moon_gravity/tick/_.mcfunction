#> rpg:asset/effect/0008.moon_gravity/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"tick/_"}

# 空中でしゃがむと急降下だぜ！
execute if score @s[tag=!reizo_mcfunc_Engin.Is_on_Ground] reizo_mcfunc_Engin.Sneaking matches 1 run return run function rpg:asset/effect/0008.moon_gravity/tick/swoop

# 減らす
scoreboard players set @s[tag=reizo_mcfunc_Engin.Is_on_Ground] RPG.Gravitry 2