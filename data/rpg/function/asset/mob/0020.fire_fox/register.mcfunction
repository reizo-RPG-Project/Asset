#> rpg:asset/mob/0020.fire_fox/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"9999.abstract_hostile_mount",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "ファイアーフォックス"
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Flammable set value 1b

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 60
    # STR
    data modify storage reizo_mcfunc_engin:mob Field.STR set value 5
    # DEF
    data modify storage reizo_mcfunc_engin:mob Field.DEF set value 75
    # 説明文
    data modify storage reizo_mcfunc_engin:mob Field.Lore set value [\
    {"text":"炎を扱うキツネです！\n"},\
    {"text":"炎を飛ばしてきたり、なかなかに厄介です...しかし所詮はキツネ！体力が少ないのでそこを狙いましょう！\n"},\
    {"text":"あと...ｸﾛｰﾑ種とは犬猿の仲と言われますね。なんでしょうね？ｸﾛｰﾑ種って。"}\
    ]
    # アイコンID
    data modify storage reizo_mcfunc_engin:mob Field.IconID set value 7
    # vehicleData
    data modify storage reizo_mcfunc_engin:mob Field.vehicleData set value "fox"