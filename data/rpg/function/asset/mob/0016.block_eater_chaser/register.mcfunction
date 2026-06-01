#> rpg:asset/mob/0016.block_eater_chaser/register
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
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "ブロックイータァ"

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 3
    # 説明文
    data modify storage reizo_mcfunc_engin:mob Field.Lore set value [{"text":"ブロックを食い荒らすモンスターです。\n"},{"text":"近づくと地上に出てくるのでそこを攻撃しましょう！"}]
    # アイコンID
    data modify storage reizo_mcfunc_engin:mob Field.IconID set value 3