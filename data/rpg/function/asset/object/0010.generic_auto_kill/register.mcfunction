#> rpg:asset/object/0010.generic_auto_kill/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 0b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b

#> フィールド
    # キルされるまでの時間 Tick
    # data modify storage reizo_mcfunc_engin:object Field.KillTime set value 2