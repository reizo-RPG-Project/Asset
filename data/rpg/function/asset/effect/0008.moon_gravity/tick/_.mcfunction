#> rpg:asset/effect/0008.moon_gravity/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

# 演出
    execute \
    if predicate {condition:"random_chance",chance:0.25} run \
    particle entity_effect{color:[0.75,0.9,0.6,1.0]} ~ ~ ~ 0.1 1.25 0.1 5 5

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"tick/_"}

# 空中でしゃがむと急降下だぜ！
execute if score @s[tag=!reizo_mcfunc_Engin.Is_on_Ground] reizo_mcfunc_Engin.Sneaking matches 1 run return run function rpg:asset/effect/0008.moon_gravity/tick/swoop

# 減らす
scoreboard players set @s[tag=reizo_mcfunc_Engin.Is_on_Ground] RPG.Gravitry 2