#> rpg:asset/object/0014.boss_portal/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 間
execute as @a[distance=..10] if score @s RPG.Obj.0014.Duration matches 1.. run scoreboard players remove @s RPG.Obj.0014.Duration 1

# プレイヤーを確認
execute if entity @p[dx=6,dz=6] as @a[dx=6,dz=6] run function rpg:asset/object/0014.boss_portal/tick/in/_