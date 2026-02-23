#> rpg:asset/object/0005.spawner_0002/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    data modify storage reizo_mcfunc_engin:object Register.Extends append value {ID:"0003.abstract_spawner",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 1b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b

# フィールド
    # スポナーが敵対状態に入る範囲 Int型
    data modify storage reizo_mcfunc_engin:object Field.in_hostil.range set value 10