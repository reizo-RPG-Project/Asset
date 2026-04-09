#> rpg:asset/mob/0014.npc_skull/init/_
#
# 
#
# @within function rpg:asset/mob/0014.npc_skull/summon/_

# 透明化
effect give @s invisibility infinite 1 true

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}