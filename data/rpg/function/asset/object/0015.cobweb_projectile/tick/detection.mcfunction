#> rpg:asset/object/0015.cobweb_projectile/tick/detection
#
# 
#
# @within function rpg:asset/object/0015.cobweb_projectile/tick/_

# 検知
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @n[dx=0,tag=!This,tag=!RPG.Mob.0018] positioned ~0.5 ~0.0 ~0.5 run return run function rpg:asset/object/0015.cobweb_projectile/tick/set
    execute unless block ~ ~-0.5 ~ #reizo_mcfunc_engin:no_col run return run function rpg:asset/object/0015.cobweb_projectile/tick/set