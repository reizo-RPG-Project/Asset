#> rpg:asset/item/0072.record_c418_cat/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0001.abstract_item",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"C418 - cat"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"レコード"}]

#> フィールド
    # Record
    data modify storage reizo_mcfunc_engin:item Field.RecordData.ID set value "0072.record_c418_cat"
    data modify storage reizo_mcfunc_engin:item Field.RecordData.name set value "music_disc.cat"
    data modify storage reizo_mcfunc_engin:item Field.RecordData.IconID set value "\u0001"
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 5
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"