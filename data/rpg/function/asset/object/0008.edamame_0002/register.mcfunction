#> rpg:asset/object/0008.edamame_0002/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    data modify storage reizo_mcfunc_engin:object Register.Extends append value {ID:"0006.abstract_edamame",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 1b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b