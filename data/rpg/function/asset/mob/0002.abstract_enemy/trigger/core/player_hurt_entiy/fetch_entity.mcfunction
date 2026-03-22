#> rpg:asset/mob/0002.abstract_enemy/trigger/core/player_hurt_entiy/fetch_entity
#
# この関数の実行者は攻撃されたEntityになっているハズ。(@s = 攻撃されたEnemy,@p = 攻撃したPlayer)
#
# @within function rpg:asset/mob/0002.abstract_enemy/trigger/player_hurt_entiy

# タグ付与
tag @s add RPG.Mob.0002.Hit

# プレイヤーのSTRを取得して、ダメージ量に入れる。
scoreboard players operation @s RPG.DMG = @p[tag=RPG.Attacker] RPG.STR

# メソッドの実行に必要なデータを取得
    function reizo_mcfunc_engin:asset/.manager/common/context/args/push
    function reizo_mcfunc_engin:asset/.manager/common/context/data/push
    data modify storage reizo_mcfunc_engin:context this set from entity @s data.this

# Hitメソッドを実行する
function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"hit/_"}