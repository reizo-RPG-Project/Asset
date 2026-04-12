#> rpg:asset/mob/0005.sub_rogue/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# IDの割り当て
function reizo_mcfunc_engin:api/id/allocate

# 初期スタートタイムのセット
scoreboard players set @s RPG.Mob.0005.Start_Time 90
scoreboard players set @s RPG.Mob.0005.Start_Time.Temp 90

# 親クラス動作の呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}