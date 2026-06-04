#> rpg:asset/mob/0017.chest_trap/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0002.abstract_enemy",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "チェストラップ"

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 1
    # STR
    data modify storage reizo_mcfunc_engin:mob Field.STR set value 10
    # 説明文
    data modify storage reizo_mcfunc_engin:mob Field.Lore set value [{"text":"...ややや！ﾋｰアブナイ！\n"},{"text":"実はこれ、見た目はチェストですけど生き物なんです。\n"},{"text":"巣を守るために開けると自爆してくるんですよ...\n"},{"text":"開けなければどうってことないので今のうちに倒しましょう！"}]
    # アイコンID
    data modify storage reizo_mcfunc_engin:mob Field.IconID set value 4