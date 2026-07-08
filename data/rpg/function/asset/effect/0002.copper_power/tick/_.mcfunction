#> rpg:asset/effect/0002.copper_power/tick/_
#
# EffectのTick処理
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

# 演出
    execute \
    if predicate {condition:"random_chance",chance:0.25} run \
    particle entity_effect{color:[0.89,0.38,0.11,1.0]} ~ ~ ~ 0.1 1.25 0.1 5 5

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"tick/_"}