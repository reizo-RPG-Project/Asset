#> rpg:asset/item/0053.slime_boots/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0012.abstract_equipment",namespace:"rpg"}
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0038.slime_ball",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"スライムブーツ",color:"white"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"ヌメヌメしている...",color:"gray",italic:0b}]
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value [feet]
    # どのトリガーを使用する？
    data modify storage reizo_mcfunc_engin:item Register.Trigger append value "item/0001"

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 4
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # ComboID
    # data modify storage reizo_mcfunc_engin:item Field.ComboID set value 2
    # DEF
    data modify storage reizo_mcfunc_engin:item Field.DEF set value 19