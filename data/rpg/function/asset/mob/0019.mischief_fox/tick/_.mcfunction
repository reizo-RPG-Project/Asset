#> rpg:asset/mob/0019.mischief_fox/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# キツネがHitタグがついたなら自分につける
execute on vehicle if entity @s[tag=RPG.Mob.0002.Hit] run function rpg:asset/mob/0019.mischief_fox/tick/vehicle_hit

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}