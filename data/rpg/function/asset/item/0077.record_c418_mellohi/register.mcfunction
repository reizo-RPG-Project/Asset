#> rpg:asset/item/0077.record_c418_mellohi/register
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
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"C418 - mellohi"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"レコード"}]
    # Tick処理をするかどうか。 boolean型 (オプション)
    data modify storage reizo_mcfunc_engin:item Register.IsTicking set value 0b

#> フィールド
    # Record
    data modify storage reizo_mcfunc_engin:item Field.RecordData.ID set from storage reizo_mcfunc_engin:context Args.ID
    data modify storage reizo_mcfunc_engin:item Field.RecordData.name set value "music_disc.mellohi"
    data modify storage reizo_mcfunc_engin:item Field.RecordData.IconID set value "\u0007"
    data modify storage reizo_mcfunc_engin:item Field.RecordData.LengthInTick set value 1920
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 5
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"