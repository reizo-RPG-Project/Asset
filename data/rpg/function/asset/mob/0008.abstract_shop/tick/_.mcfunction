#> rpg/asset/mob/0008.abstract_shop/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# プレイヤーがこっちを見ていない
    execute as @a[tag=RPG.Mob.0008.Player.Looking,tag=!RPG.Mob.0008.Player.Looked] positioned ~ ~1.1 ~ run function rpg:asset/mob/0008.abstract_shop/tick/not_look
    tag @a[tag=RPG.Mob.0008.Player.Looked] remove RPG.Mob.0008.Player.Looked