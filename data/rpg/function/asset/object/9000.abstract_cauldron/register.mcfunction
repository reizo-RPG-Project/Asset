#> rpg:asset/object/9000.abstract_cauldron/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    # data modify storage reizo_mcfunc_engin:object Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 0b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b
    # 動くことを許すか？ boolean型
    data modify storage reizo_mcfunc_engin:object Register.Allow_Movement set value 0b

#> フィールド
    # レシピ
    data modify storage reizo_mcfunc_engin:object Field.Recipes append value {ItemID:{ID_0:"0006.fuji_apple",ID_1:"0006.fuji_apple",ID_2:"0006.fuji_apple"},result:{RecipeID:"0068.baked_apple"}}
    # data modify storage reizo_mcfunc_engin:object Field.Recipes append value {ItemID:{ID_0:"0007.ramune",ID_1:"0007.ramune",ID_2:"0007.ramune"},result:{RecipeID:"0068.baked_apple"}} 圧縮ラムネっという予定
    # data modify storage reizo_mcfunc_engin:object Field.Recipes append value {ItemID:{ID_0:"0019.carrot",ID_1:"0019.carrot",ID_2:"0019.carrot"},result:{RecipeID:"0068.baked_apple"}} 焼きニンジン