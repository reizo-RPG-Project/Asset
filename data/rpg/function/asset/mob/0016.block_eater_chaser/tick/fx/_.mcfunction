#> rpg:asset/mob/0016.block_eater_chaser/tick/fx/_
#
# 
#
# @within function rpg:asset/mob/0016.block_eater_chaser/tick/_

# FX
    # ブロック名取得
    execute positioned ~ ~-0.5 ~ run function reizo_libs:get_block_name/_
    # 取得したデータを移動
    data modify storage reizo_mcfunc_engin:context this.block_name set from storage reizo_libs:_ Out[-1]
    # お掃除
    data remove storage reizo_libs:_ Out[-1]
    # マクロでパーティクル表示
    function rpg:asset/mob/0016.block_eater_chaser/tick/fx/particle.m with storage reizo_mcfunc_engin:context this