#> rpg:asset/mob/0016.block_eater_chaser/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# FX
    # ブロック名取得
    execute positioned ~ ~-0.5 ~ run function reizo_libs:get_block_name/_
    # 取得したデータを移動
    data modify storage reizo_mcfunc_engin:context this.block_name set from storage reizo_libs:_ Out[-1]
    # お掃除
    data remove storage reizo_libs:_ Out[-1]
    # マクロでパーティクル表示
    function rpg:asset/mob/0016.block_eater_chaser/tick/fx.m with storage reizo_mcfunc_engin:context this

# プレイヤーが半径5マス以内にいないなら動作終了
execute unless entity @p[distance=..10] run return 0

# プレイヤーの方を向く
rotate @s facing entity @p feet

# 縦角度0
data modify entity @s Rotation[1] set value 0

# 前を行く
tp @s ^ ^ ^0.1

# プレイヤーがめっちゃ近くにいたら攻撃mob召喚
execute if entity @p[distance=..0.5] run function rpg:asset/mob/0016.block_eater_chaser/tick/summon/_