#> rpg:asset/item/0042.earth_blessing/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0010.abstract_artifact",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value "地の恵み"
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [[{"text":"地に足がついている間は",color:"gray",italic:0b},{"text":"\u0003",font:"icon/effects",color:"white",italic:0b},{"text":"大地の恵み",color:"blue",italic:0b},{"text":"を受けられる。",color:"gray",italic:0b}]]
    # アイテムを持っていない場合でも動作させるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.NotHold set value 1b

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 3
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # エフェクト
    data modify storage reizo_mcfunc_engin:item Field.Effects append value {"ID":"0004.earth_blessing",namespace:"rpg"}