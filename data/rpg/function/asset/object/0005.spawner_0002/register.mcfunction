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
    # 何回召喚できるか Int型
    data modify storage reizo_mcfunc_engin:object Field.HP set value 3
    # 本気になるのか？ boolean型
    data modify storage reizo_mcfunc_engin:object Field.Seriously set value 0b
    # スポナーが敵対状態に入る範囲 Int型
    data modify storage reizo_mcfunc_engin:object Field.in_hostil.range set value 10
    # どのmobを召喚するか。 unknow型
    data modify storage reizo_mcfunc_engin:object Field.SpawnMob set value ["0003.zombie"]
    # 敵対時からどれくらいでmobを召喚するか。 Int型
        # 最小数
        data modify storage reizo_mcfunc_engin:object Field.in_hostil.Delay.min set value 100
        # 最大数
        data modify storage reizo_mcfunc_engin:object Field.in_hostil.Delay.max set value 100
    # 一度に召喚する数 Int型
    data modify storage reizo_mcfunc_engin:object Field.SpawnCount set value 1