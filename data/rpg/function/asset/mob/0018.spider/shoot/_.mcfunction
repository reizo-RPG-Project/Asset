#> rpg:asset/mob/0018.spider/shoot/_
#
# 
#
# @within function rpg:asset/mob/0018.spider/in_hostil/_

# 吐いたもの用のオブジェクトを召喚
execute anchored eyes positioned ^ ^ ^1 positioned ~ ~1 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0015.cobweb_projectile",namespace:"rpg"}