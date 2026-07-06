#> rpg:asset/effect/0002.copper_power/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:effect Register.Extends append value {ID:"0001.abstract",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:effect Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:effect Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:effect Register.Name set value {"text":"銅の力"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:effect Register.Lore set value [{"text":"銅の錆浄化力が全身にみなぎる！"}]
    # 残り時間 Int型
    data modify storage reizo_mcfunc_engin:effect Register.Duration set value 100
    # どのトリガーを使用する？
    # data modify storage reizo_mcfunc_engin:effect Register.Trigger append value ""

#> フィールド
    # IconID Int型
    data modify storage reizo_mcfunc_engin:effect Field.IconID set value "0001"