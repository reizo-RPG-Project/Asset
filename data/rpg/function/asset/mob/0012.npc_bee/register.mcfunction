#> rpg:asset/mob/0012.npc_bee/register
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
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "ハチ"

#> フィールド
    # 話す内容 boolean型(もしかしたらListにして何Tickにどの会話が出るかをここから調整出来るかも。)
    data modify storage reizo_mcfunc_engin:mob Field.Talk set value 1b
    # TalkスコアのID String型
    data modify storage reizo_mcfunc_engin:mob Field.Score set value "0012"
    # 顔グラ
    data modify storage reizo_mcfunc_engin:mob Field.FaceData append value [{"text":"<",color:"white"},{"text":"0",color:"white",font:"icon/face/0003.bee/_"},{"text":"ハチ> ",color:"white"}]
    data modify storage reizo_mcfunc_engin:mob Field.FaceData append value [{"text":"<",color:"white"},{"text":"1",color:"white",font:"icon/face/0003.bee/_"},{"text":"ハチ> ",color:"white"}]
    data modify storage reizo_mcfunc_engin:mob Field.FaceData append value [{"text":"<",color:"white"},{"text":"2",color:"white",font:"icon/face/0003.bee/_"},{"text":"ハチ> ",color:"white"}]
    data modify storage reizo_mcfunc_engin:mob Field.FaceData append value [{"text":"<",color:"white"},{"text":"3",color:"white",font:"icon/face/0003.bee/_"},{"text":"ハチ> ",color:"white"}]