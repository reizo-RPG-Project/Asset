#> rpg:asset/mob/0015.block_eater/tick/_
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/register

# 死
execute if score @s RPG.Mob.0015.Timer matches ..0 run function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}

# デクリメント
scoreboard players remove @s RPG.Mob.0015.Timer 1

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}