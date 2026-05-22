#> rpg:asset/item/0043.abstract_loot_pouch/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0001.abstract_item",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 1b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"戦利品ポーチ",font:"default"},{"text":"\uE005",font:"icon/_",color:"white",italic:0b}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"いいものが出る...かも！？",color:"gray",italic:0b}]
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value [mainhand]
    # アイテムを持っていない場合でも動作させるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.NotHold set value 1b

#> フィールド
    # 出るアイテム
    # data modify storage reizo_mcfunc_engin:item Field.Pools set value \
    [\
        {\
            Rolls:1,\
            Entries:[\
                {\
                    Weight: 4,\
                    ID: "0006.fuji_apple",\
                    count: {min:1,max:5}\
                },\
                {\
                    Weight: 6,\
                    ID: "0007.ramune",\
                    count: {min:2,max:4}\
                }\
            ]\
        },\
        {\
            Rolls:1,\
            Entries:[\
                {\
                    Weight: 5,\
                    ID: "0016.stone_sword",\
                    count: 1\
                },\
                {\
                    Weight: 3,\
                    ID: "0030.copper_sword",\
                    count: 1\
                }\
            ]\
        },\
        {\
            Rolls:1,\
            Entries:[\
                {\
                    Weight: 3,\
                    ID: "0013.leather_hat",\
                    count: 1\
                },\
                {\
                    Weight: 3,\
                    ID: "0015.leather_chest",\
                    count: 1\
                }\
            ]\
        }\
    ]