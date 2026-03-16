#> rpg:asset/item/test.add_hp/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0010.abstract_artifact",namespace:"rpg"}
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0040.abstract_status_up",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"ADD HP"}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"ARTIFACT TEST ITEM!",color:"gray",italic:0b}]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 0
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # 最大体力
    data modify storage reizo_mcfunc_engin:item Field.HP_MAX set value 1000