#> rpg/asset/mob/0013.npc_bees/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# 親クラス動作の呼び出し
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
    function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}

# 大きさ変更
attribute @s scale base set 0.7

# ハチ召喚
execute positioned ~ ~1.5 ~ run function reizo_mcfunc_engin:api/mob/summon.m {ID:"0012.npc_bee",namespace:"rpg"}