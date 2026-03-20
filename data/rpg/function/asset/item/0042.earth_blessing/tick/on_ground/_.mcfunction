#> rpg:asset/item/0042.earth_blessing/tick/on_ground/_
#
# 
#
# @within function rpg:asset/item/0042.earth_blessing/tick/_

# Init処理
execute if entity @s[tag=!RPG.Item.0042.OnGround.isInitialized] run function rpg:asset/item/0042.earth_blessing/tick/on_ground/init

# 演出
    # 地面にあるブロックのパーティクルを出したいので地面にあるブロック名を取得
    execute positioned ~ ~-0.5 ~ run function reizo_libs:get_block_name/_
    # 取得したデータを移動
    data modify storage reizo_mcfunc_engin:context this.block_name set from storage reizo_libs:_ Out[-1]
    # お掃除
    data remove storage reizo_libs:_ Out[-1]
    # マクロでパーティクル表示
    function rpg:asset/item/0042.earth_blessing/tick/on_ground/fx.m with storage reizo_mcfunc_engin:context this
    # 通常のパーティクル
    particle dust{color:[0.3,0.7,1],scale:0.9} ~ ~0.1 ~ 0.3 0.0 0.3 0 1 normal @a[distance=..10]
    particle dust{color:[0.3,1,0.5],scale:0.9} ~ ~0.1 ~ 0.3 0.0 0.3 0 1 normal @a[distance=..10]