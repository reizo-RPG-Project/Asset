#> rpg/asset/mob/0005.sub_rogue/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 頭の上のやつが敵対しているのなら敵対だ！
execute on passengers if predicate rpg:asset/mob/0002/in_hostil as @n[type=evoker,tag=reizo_mcfunc_Engin.Mob,distance=0] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"in_hostile/_"}

# 頭の上のやつは燃えねぇ
execute on passengers if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_fire:true}}} run data modify entity @s Fire set value -1

# 親クラス動作の呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}