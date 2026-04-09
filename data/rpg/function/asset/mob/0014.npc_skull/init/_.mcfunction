#> rpg:asset/mob/0014.npc_skull/init/_
#
# 
#
# @within function rpg:asset/mob/0014.npc_skull/summon/_

# 骸骨を出す
execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:"skeleton_skull"},billboard:"vertical"}

# 透明化
effect give @s invisibility infinite 1 true

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}