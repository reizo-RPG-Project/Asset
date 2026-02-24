#> rpg:asset/item/0029.final_edamame/register
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
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"ファイナル・ｴﾀﾞﾏﾒ",color:"gold",bold:1b}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"最後の最後に使う切り札。",color:"gray",italic:0b},{"text":"回復量がとても多いが、とても希少である。",color:"gray",italic:0b}]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 1
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "#FC0066"
    # カウント
    data modify storage reizo_mcfunc_engin:item Field.Count set value 3
    # 回復量
    data modify storage reizo_mcfunc_engin:item Field.Recovery set value 1000000000
    # いつでも食べられるかどうか
    data modify storage reizo_mcfunc_engin:item Field.CanAlwaysEat set value 0b