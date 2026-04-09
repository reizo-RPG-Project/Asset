#> rpg:asset/mob/0014.npc_skull/tick/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/init/_

# パーティクル
particle glow ~ ~-0.5 ~ 0.0 0.5 0.0 0 1 normal @a[distance=..3]

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}