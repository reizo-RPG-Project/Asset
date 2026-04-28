#> rpg:asset/item/0051.juck_o_luntern/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0012.abstract_equipment",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"ｼﾞｬｯｸ･ｵ･ﾗﾝﾀｰﾝ",bold:1b}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [[{"text":"ｼﾞｬｯｸ",color:"gray",italic:0b,bold:1b},{"text":"と",color:"gray",italic:0b,bold:0b},{"text":"ﾗﾝﾀｰﾝ",color:"gray",italic:0b,bold:1b},{"text":"が共同で作った最強(?)の被り物",color:"gray",italic:0b,bold:0b}],{"text":"しゃがむと光る。何かいいことがあるかも...?",color:"gray",italic:0b}]
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value ["head"]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 3
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # 最大体力
    data modify storage reizo_mcfunc_engin:item Field.HP_MAX set value 5
    # 防御力
    data modify storage reizo_mcfunc_engin:item Field.DEF set value 13
    # 明るさレベル int型
    data modify storage reizo_mcfunc_engin:item Field.LightLevel set value 14