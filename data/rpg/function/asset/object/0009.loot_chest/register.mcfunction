#> rpg:asset/object/0009.loot_chest/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    data modify storage reizo_mcfunc_engin:object Register.Extends append value {ID:"0010.generic_auto_kill",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 1b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b
    # 動くことを許すか？ boolean型
    data modify storage reizo_mcfunc_engin:object Register.Allow_Movement set value 1b

#> フィールド
    # キルされるまでの時間 Tick
    data modify storage reizo_mcfunc_engin:object Field.KillTime set value 2
    # チェストが閉めているかどうか確認されるまでどれくらいかかるか
    data modify storage reizo_mcfunc_engin:object Field.CloseCheckTime set value 25