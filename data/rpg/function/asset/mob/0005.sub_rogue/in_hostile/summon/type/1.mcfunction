#> rpg:asset/mob/0005.sub_rogue/in_hostile/summon/type/1
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/common/check

# 回数をランダムに決める
    execute store result storage reizo_mcfunc_engin:context this.SummonCount.zombie int 1 run random value 0..1
    execute store result storage reizo_mcfunc_engin:context this.SummonCount.zombie_kid int 1 run random value 1..2