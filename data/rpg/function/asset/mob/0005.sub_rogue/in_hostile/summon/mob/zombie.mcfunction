#> rpg:asset/mob/0005.sub_rogue/in_hostile/summon/mob/zombie
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/common/_

# 引数セット
    data modify storage reizo_mcfunc_engin:lib In.For.LoopCount set from storage reizo_mcfunc_engin:context this.SummonCount.zombie
    data modify storage reizo_mcfunc_engin:lib In.For.func set value "reizo_mcfunc_engin:api/mob/summon.m {ID:'0003.zombie',namespace:'rpg'}"

# ライブラリ使用
function reizo_libs:for/_