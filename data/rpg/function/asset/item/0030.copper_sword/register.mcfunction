#> rpg:asset/item/0030.copper_sword/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0003.abstract_sword",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"銅の剣"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [\
    {"text":"使い続けることにより、酸化が進む。",color:"gray",italic:0b},\
    [{"text":"さらに使い錆が取れると、一時的に",color:"gray",italic:0b},{"text":"\u0001",font:"icon/effects",color:"white",italic:0b},{"text":"銅の力",color:"blue",italic:0b},{"text":"を得られる。",color:"gray",italic:0b}]\
    ]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 2
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # 物理攻撃力
    data modify storage reizo_mcfunc_engin:item Field.STR set value 19
    # 攻撃速度
    data modify storage reizo_mcfunc_engin:item Field.AttackSpeed set value -1.6
    # 酸化進行度の初期値
    data modify storage reizo_mcfunc_engin:item Field.oxidationProgress set value 1
    # エフェクト
    data modify storage reizo_mcfunc_engin:item Field.Effects append value {"ID":"0002.copper_power",namespace:"rpg"}