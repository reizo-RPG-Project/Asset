#> rpg:asset/effect/0006.light_of_jack_o_lantern/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:effect Register.Extends append value {ID:"0001.abstract",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:effect Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:effect Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:effect Register.Name set value {"text":"ｼﾞｬｯｸ･ｵ･ﾗﾝﾀｰﾝの恵み"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:effect Register.Lore set value [{"text":""}]
    # 残り時間 Int型
    data modify storage reizo_mcfunc_engin:effect Register.Duration set value 1

#> フィールド
    # IconID String型
    data modify storage reizo_mcfunc_engin:effect Field.IconID set value "0005"
    # HP_MAX Int型
    data modify storage reizo_mcfunc_engin:effect Field.HP_MAX set value 10
    # DEF Int型
    data modify storage reizo_mcfunc_engin:effect Field.DEF set value 10