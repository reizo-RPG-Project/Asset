#> rpg:asset/mob/0018.spider/shoot/_
#
# 
#
# @within function rpg:asset/mob/0018.spider/in_hostil/_

# 角度をプレイヤーに合わせる
rotate @s facing entity @p[tag=RPG.Mob.0002.Target]

# 吐いたもの用のオブジェクトを召喚
    execute rotated ~30 ~ positioned ^ ^ ^2 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0015.cobweb_projectile",namespace:"rpg"}
    execute rotated ~-30 ~ positioned ^ ^ ^2 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0015.cobweb_projectile",namespace:"rpg"}
    execute positioned ^ ^ ^4 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0015.cobweb_projectile",namespace:"rpg"}