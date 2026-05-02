#> rpg:asset/item/0060.iron_slime_boots/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0053.abstract_sime_boots",namespace:"rpg"}
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0059.iron_boots",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"鉄のスライムブーツ",color:"white"}

#> フィールド
    # 除外したいクラス
    data modify storage reizo_mcfunc_engin:item Field.Merge.Lore.classBlockList append value {ID:"0059.iron_boots",namespace:"rpg"}
