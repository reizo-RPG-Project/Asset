#> rpg:asset/mob/0012.npc_bee/tick/_
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/init/_

# 近くのハチに同じRotを
data modify entity @n[type=bee,tag=RPG.Mob.0012.Bee] Rotation set from entity @s Rotation

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:asset/mob/super.tick