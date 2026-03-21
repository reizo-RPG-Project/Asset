#> rpg:asset/mob/0013.npc_bees/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0007.abstract_npc",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "ハチ飼いのビース"

#> フィールド
    # 話す内容 boolean型(もしかしたらListにして何Tickにどの会話が出るかをここから調整出来るかも。)
    data modify storage reizo_mcfunc_engin:mob Field.Talk set value 1b
    # TalkスコアのID String型
    data modify storage reizo_mcfunc_engin:mob Field.Score set value "0013"