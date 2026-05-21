#> rpg:asset/item/0064.his_jacket/register
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
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"彼のジャケット",color:"white"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"彼の赤色のジャケット。",color:"gray",italic:0b},{"text":"何故か頭に存在しない語録が流れてくる気がする。",color:"gray",italic:0b}]
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value [chest]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 5
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # ComboID
    # data modify storage reizo_mcfunc_engin:item Field.ComboID set value null
    # DEF
    data modify storage reizo_mcfunc_engin:item Field.DEF set value 315
    # texts
    data modify storage reizo_mcfunc_engin:item Field.Texts set value [{"text":"\uE011<ｱ> 「りんがんぐりぐり」だ！"},{"text":"\uE011<ｱ> ﾊﾝﾊﾞｰｸﾞ!!!"},{"text":"\uE011<ｱ> 死刑"},{"text":"\uE011<ｱ> ぱんつくったよ"}]