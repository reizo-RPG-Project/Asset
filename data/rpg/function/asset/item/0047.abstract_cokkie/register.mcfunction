#> rpg:asset/item/0047.abstract_cokkie/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0005.abstract_food",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 1b
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore append value {"text":"クリックするといいことがある...かも？"}
    # 消費アイテム
    # ({animation: (block | bow | brush | crossbow | drink | eat | none | spear | spyglass | toot_horn),consume_seconds:(float型),has_consume_particles:(boolean型),on_consume_effects:(TextComponentsString[])})
    data modify storage reizo_mcfunc_engin:item Register.Consumable set value {"animation":"none","consume_seconds":2147483647}
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value [mainhand, offhand]

#> フィールド
    # カウント
    data modify storage reizo_mcfunc_engin:item Field.Count set value 64
    # 回復量
    data modify storage reizo_mcfunc_engin:item Field.Recovery set value 1
    # いつでも食べられるかどうか
    data modify storage reizo_mcfunc_engin:item Field.CanAlwaysEat set value 1b