#> rpg:asset/item/0044.loot_pouch_0001/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0043.abstract_loot_pouch",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b

#> フィールド
    # 出るアイテム
    data modify storage reizo_mcfunc_engin:item Field.Pools set value \
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
                },\
                {\
                    Weight: 2,\
                    ID: "0019.carrot",\
                    count: {min:1,max:3}\
                },\
                {\
                    Weight: 1,\
                    ID: "0037.grand_steak",\
                    count: {min:1,max:2}\
                }\
            ]\
        },\
        {\
            Rolls:1,\
            Entries:[\
                {\
                    Weight: 10,\
                    ID: "0016.stone_sword",\
                    count: 1\
                },\
                {\
                    Weight: 6,\
                    ID: "0030.copper_sword",\
                    count: 1\
                },\
                {\
                    Weight: 4,\
                    ID: "0017.iron_sword",\
                    count: 1\
                },\
                {\
                    Weight: 2,\
                    ID: "0027.golden_sword",\
                    count: 1\
                }\
            ]\
        },\
        {\
            Rolls:1,\
            Entries:[\
                {\
                    Weight: 10,\
                    ID: "0025.amethyst_wand",\
                    count: 1\
                },\
                {\
                    Weight: 6,\
                    ID: "0033.resin_wand",\
                    count: 1\
                },\
                {\
                    Weight: 4,\
                    ID: "0026.echo_wand",\
                    count: 1\
                },\
                {\
                    Weight: 2,\
                    ID: "0027.golden_sword",\
                    count: 1\
                }\
            ]\
        },\
        {\
            Rolls:1,\
            Entries:[\
                {\
                    Weight: 3,\
                    ID: "0022.leather_leggings",\
                    count: 1\
                },\
                {\
                    Weight: 3,\
                    ID: "0023.leather_boots",\
                    count: 1\
                },\
                {\
                    Weight: 2,\
                    ID: "0031.copper_helmet",\
                    count: 1\
                },\
                {\
                    Weight: 2,\
                    ID: "0032.copper_chest",\
                    count: 1\
                },\
                {\
                    Weight: 1,\
                    ID: "0014.tortoise_helmet",\
                    count: 1\
                }\
            ]\
        }\
    ]