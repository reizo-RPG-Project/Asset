#> rpg:asset/item/0040.abstract_status_up/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 1b
    # アイテムを持っていない場合でも動作させるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.NotHold set value 1b

#> フィールド
    # 最大体力
    # data modify storage reizo_mcfunc_engin:item Field.HP_MAX set value 0
    # 最大魔力
    # data modify storage reizo_mcfunc_engin:item Field.MP_MAX set value 0
    # 物理攻撃力
    # data modify storage reizo_mcfunc_engin:item Field.STR set value 0
    # 魔法攻撃力
    # data modify storage reizo_mcfunc_engin:item Field.INT set value 0
    # 防御力
    # data modify storage reizo_mcfunc_engin:item Field.DEF set value 0