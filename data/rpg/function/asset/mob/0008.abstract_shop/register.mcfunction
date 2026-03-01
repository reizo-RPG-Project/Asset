#> rpg:asset/mob/0008.abstract_shop/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0007.abstract_npc",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 1b

#> フィールド
    # 売っているもの ?型
        # data modify storage reizo_mcfunc_engin:mob Field.Product append value \
        # {Name:"武器",icon:"null",Items:\
        #     [\
        #         {Name:"剣",icon:"item/0004/items",Items:\
        #         [{ID:"0004.wooden_sword",Price:50},{ID:"0016.stone_sword",Price:75}]\
        #         },\
        #         {Name:"杖",icon:"item/0004/items",Items:\
        #         [{ID:"0021.wooden_wand",Price:50},{ID:"0025.amethyst_wand",Price:65}]\
        #         }\
        #     ]\
        # }
        # data modify storage reizo_mcfunc_engin:mob Field.Product append value \
        # {Name:"防具",icon:"null",Items:\
        #     [\
        #         {Name:"ヘルメット",icon:"leather_helmet",Items:\
        #         [{ID:"0013.leather_hat",Price:55},{ID:"0014.tortoise_helmet",Price:65}]\
        #         },\
        #         {Name:"チェストプレート",icon:"leather_chestplate",Items:\
        #         [{ID:"0015.leather_chest",Price:75}]\
        #         },\
        #         {Name:"レギンス",icon:"leather_leggings",Items:\
        #         [{ID:"0022.leather_leggings",Price:65}]\
        #         },\
        #         {Name:"ブーツ",icon:"leather_boots",Items:\
        #         [{ID:"0023.leather_boots",Price:55}]\
        #         }\
        #     ]\
        # }
        # data modify storage reizo_mcfunc_engin:mob Field.Product append value \
        # {Name:"アーティファクト",icon:"null",Items:\
        #     [{ID:"0018.soul_lantern",Price:500}]\
        # }