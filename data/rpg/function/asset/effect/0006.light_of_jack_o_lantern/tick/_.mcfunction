#> rpg:asset/effect/0006.light_of_jack_o_lantern/tick/_
#
# EffectのTick処理
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

# 光源設置
    data modify storage reizo_mcfunc_engin:object Field.LightLevel set value 14
    execute align xyz positioned ~0.5 ~1.5 ~0.5 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0011.light",namespace:"rpg"}

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"tick/_"}