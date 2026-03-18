#> rpg:asset/mob/0009.tubo_bito/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0008.abstract_tubo_bito",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "\uE005壺人"

#> フィールド
    # 話す内容 boolean型(もしかしたらListにして何Tickにどの会話が出るかをここから調整出来るかも。)
    data modify storage reizo_mcfunc_engin:mob Field.Talk set value 1b
    # TalkスコアのID String型
    data modify storage reizo_mcfunc_engin:mob Field.Score set value "0009"
    # 出すアイテム
    data modify storage reizo_mcfunc_engin:mob Field.Items append value [{Rarity:1,List:["0004.wooden_sword"]},{Rarity:2,List:["0016.stone_sword","0030.copper_sword"]}]
    data modify storage reizo_mcfunc_engin:mob Field.Items append value [{Rarity:1,List:["0021.wooden_wand"]},{Rarity:2,List:["0025.amethyst_wand","0033.resin_wand"]}]
    data modify storage reizo_mcfunc_engin:mob Field.Items append value [{Rarity:1,List:["0022.leather_leggings","0023.leather_boots"]},{Rarity:2,List:["0031.copper_helmet","0032.copper_chest"]},{Rarity:3,List:["0014.tortoise_helmet"]}]
    data modify storage reizo_mcfunc_engin:mob Field.Items append value [{Rarity:1,List:["0006.fuji_apple","0007.ramune"]},{Rarity:2,List:["0019.carrot"]},{Rarity:3,List:["0037.grand_steak"]}]