#> rpg:asset/object/0019.fire/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# プレイヤーが近くにいないとダメー
execute unless entity @p[distance=..3] run return 0

# プレイヤーにスコアを与える
execute align xyz run scoreboard players operation @a[dx=0] RPG.FireDMG = @s RPG.FireDMG

execute align xyz run particle electric_spark ~0.5 ~0.5 ~0.5

# 炎があるか確認、無かったら消える
execute align xyz unless block ~0.5 ~0.5 ~0.5 fire run kill @s