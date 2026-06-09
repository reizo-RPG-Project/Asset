#> rpg:asset/mob/0018.spider/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0002.abstract_enemy",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "スペイダァ"
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 150
    # STR
    data modify storage reizo_mcfunc_engin:mob Field.STR set value 9
    # DEF
    data modify storage reizo_mcfunc_engin:mob Field.DEF set value 100
    # 説明文
    data modify storage reizo_mcfunc_engin:mob Field.Lore set value [{"text":"クモです！ﾋｰ怖い怖い...\n"},{"text":"私虫嫌いで...えと、此奴はクモの糸を吐いてきます。触れるととても離れるのは困難なので気を付けて！"}]
    # アイコンID
    data modify storage reizo_mcfunc_engin:mob Field.IconID set value 0