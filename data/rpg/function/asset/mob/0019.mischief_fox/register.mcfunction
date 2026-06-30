#> rpg:asset/mob/0019.mischief_fox/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0002.abstract_enemy",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "トリックス"
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 60
    # STR
    data modify storage reizo_mcfunc_engin:mob Field.STR set value 5
    # DEF
    data modify storage reizo_mcfunc_engin:mob Field.DEF set value 75
    # 説明文
    data modify storage reizo_mcfunc_engin:mob Field.Lore set value [\
    {"text":"わ～かわいいキツネ...\n"},\
    {"text":"っと見せかけてイタズラ好きのキツネです！店の物をよく取られるんですよ...\n"},\
    {"text":"色々と不思議な事をしてくるのでホンロウされないように！"}\
    ]
    # アイコンID
    data modify storage reizo_mcfunc_engin:mob Field.IconID set value 6