#> rpg:asset/object/0003.abstract_spawner/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 0b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 1b
    # 動くことを許すか？ boolean型
    data modify storage reizo_mcfunc_engin:object Register.Allow_Movement set value 0b

# フィールド
    # スポナーが敵対状態に入る範囲 Int型(パーティクルの発生が[dis=..5]なのでこの値は5以上が好ましい。)
    # data modify storage reizo_mcfunc_engin:object Field.in_hostil.range set value 5