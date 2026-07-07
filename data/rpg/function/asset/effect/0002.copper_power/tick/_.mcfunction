#> rpg:asset/effect/0002.copper_power/tick/_
#
# EffectのTick処理
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

# 演出
    execute \
    if predicate {condition:"random_chance",chance:0.15} run \
    particle effect ~ ~ ~ 0.1 1.25 0.1 5 3

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"tick/_"}