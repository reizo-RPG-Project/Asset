#> rpg:asset/effect/0004.earth_blessing/tick/_
#
# EffectのTick処理
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"tick/_"}

# 演出
    # 25パーセントでやらない
    execute if predicate {condition:"random_chance",chance:0.25} run return 0
    # 地面にあるブロックのパーティクルを出したいので地面にあるブロック名を取得
    execute positioned ~ ~-0.5 ~ run function reizo_libs:get_block_name/_
    # 取得したデータを移動
    data modify storage reizo_mcfunc_engin:context this.block_name set from storage reizo_libs:_ Out[-1]
    # お掃除
    data remove storage reizo_libs:_ Out[-1]
    # マクロでパーティクル表示
    function rpg:asset/effect/0004.earth_blessing/tick/fx.m with storage reizo_mcfunc_engin:context this
    # 通常のパーティクル
    particle dust{color:[0.3,0.7,1],scale:0.9} ~ ~0.1 ~ 0.3 0.0 0.3 0 2 normal @a[distance=..10]
    particle dust{color:[0.3,1,0.5],scale:0.9} ~ ~0.1 ~ 0.3 0.0 0.3 0 2 normal @a[distance=..10]