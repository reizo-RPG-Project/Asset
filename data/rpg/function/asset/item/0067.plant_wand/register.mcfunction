#> rpg:asset/item/0067.plant_wand/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0020.abstract_wand",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"植物の杖"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [\
    {"text":"大部分が植物で構成されている杖",color:"gray",italic:0b},\
    [{"text":"日光が出ている間は",color:"gray",italic:0b},{"text":"\u0004",font:"icon/effects",color:"white",italic:0b},{"text":"太陽の恵み",color:"blue",italic:0b},{"text":"が付与される。",color:"gray",italic:0b}]\
    ]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 2
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # 魔法攻撃力
    data modify storage reizo_mcfunc_engin:item Field.INT set value 4
    # 攻撃速度
    data modify storage reizo_mcfunc_engin:item Field.AttackSpeed set value -1
    # エフェクト
    data modify storage reizo_mcfunc_engin:item Field.Effects append value {"ID":"0005.solar_blessing",namespace:"rpg"}