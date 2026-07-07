#> rpg:asset/effect/0001.abstract/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    # data modify storage reizo_mcfunc_engin:effect Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:effect Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:effect Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:effect Register.Name set value {"text":"このメッセージはでないはずだよ。"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:effect Register.Lore set value [{"text":"このメッセージはでないはずだよ。"}]
    # 残り時間 Int型
    data modify storage reizo_mcfunc_engin:effect Register.Duration set value 100
    # どのトリガーを使用する？
    # data modify storage reizo_mcfunc_engin:effect Register.Trigger append value ""

#> フィールド
    # IconID String型
    data modify storage reizo_mcfunc_engin:effect Field.IconID set value "FFFF"
    # HP_MAX Int型
    # data modify storage reizo_mcfunc_engin:effect Field.HP_MAX set value 10
    # HP_regen Int型
    # data modify storage reizo_mcfunc_engin:effect Field.HP_regen set value 10
    # MP_MAX Int型
    # data modify storage reizo_mcfunc_engin:effect Field.MP_MAX set value 10
    # MP_regen Int型
    # data modify storage reizo_mcfunc_engin:effect Field.MP_regen set value 10
    # DEF Int型
    # data modify storage reizo_mcfunc_engin:effect Field.DEF set value 10
    # STR Int型
    # data modify storage reizo_mcfunc_engin:effect Field.STR set value 10
    # INT Int型
    # data modify storage reizo_mcfunc_engin:effect Field.INT set value 10