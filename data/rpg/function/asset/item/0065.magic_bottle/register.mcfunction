#> rpg:asset/item/0065.magic_bottle/register
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
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"魔法の瓶"}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"魔力が詰まっている瓶",color:"gray",italic:0b},{"text":"持っていると中身の力をもらえる。",color:"gray",italic:0b}]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 3
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # 魔法攻撃力
    data modify storage reizo_mcfunc_engin:item Field.INT set value 4