#> rpg:asset/mob/0011.goat/init/_
#
# 
#
# @within function rpg:asset/mob/0011.goat/register

# あらよっとサイズ調整だ！
attribute @s scale base set 0.7

# 親クラス動作の呼び出し
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
    function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}

# Mob 0006を45%の確率で乗せる
    # 45%を引けなかったら失敗
    # execute unless predicate {condition:"random_chance",chance:0.45} run return 0
    # ここが動いているということは45%を引いたということ。なので召喚！
    function reizo_mcfunc_engin:api/mob/summon.m {ID:"0006.zombie_kid",namespace:"rpg"}
    # 乗せる
    ride @n[type=zombie,tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0002.Enemy] mount @s
    tellraw @a "RIDE!!!"