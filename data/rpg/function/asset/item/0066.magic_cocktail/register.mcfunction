#> rpg:asset/item/0066.magic_cocktail/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0005.abstract_food",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"魔法のカクテル"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"魔力を酒で割ったカクテル",color:"gray",italic:0b},{"text":"飲むと中身の魔力を手に入れることが出来る。",color:"gray",italic:0b}]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 2
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # カウント
    data modify storage reizo_mcfunc_engin:item Field.Count set value 16
    # 飲み物かどうか boolean
    data modify storage reizo_mcfunc_engin:item Field.IsDrink set value 1b
    # 回復量
    data modify storage reizo_mcfunc_engin:item Field.Recovery.MP set value 25
    # いつでも食べられるかどうか
    data modify storage reizo_mcfunc_engin:item Field.CanAlwaysEat set value 0b