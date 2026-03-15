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