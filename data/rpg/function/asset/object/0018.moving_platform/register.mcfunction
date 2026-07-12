#> rpg:asset/object/0018.moving_platform/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    # data modify storage reizo_mcfunc_engin:object Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 1b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b
    # 動くことを許すか？ boolean型
    data modify storage reizo_mcfunc_engin:object Register.Allow_Movement set value 1b

#> フィールド
    # どの方向に動くか。 List[(float), (float)]
    data modify storage reizo_mcfunc_engin:object Field.moveRot set value [0.0f, 0.0f]
    # 1tick内に移動する速度 double型(小数第4位まで可能)
    data modify storage reizo_mcfunc_engin:object Field.Speed set value 0.075d
    # 召喚地点からどこまで何Tick移動するか？ Int型
    data modify storage reizo_mcfunc_engin:object Field.transitTime set value 40