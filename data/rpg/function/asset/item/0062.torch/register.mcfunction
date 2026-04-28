#> rpg:asset/item/0062.torch/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0061.abstract_glow_item",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"松明"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"何の変哲もない、一般的な松明。",color:"gray",italic:0b}]

#> フィールド
    # カウント
    data modify storage reizo_mcfunc_engin:item Field.Count set value 64
    # 明るさレベル Int型
    data modify storage reizo_mcfunc_engin:item Field.LightLevel set value 11