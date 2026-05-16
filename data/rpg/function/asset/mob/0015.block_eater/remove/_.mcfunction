#> rpg:asset/mob/0015.block_eater/remove/_
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/tick/_

# 自分と結びついたチェイサーの処理
execute at @e[type=marker,tag=RPG.Mob.0016] if score @s reizo_mcfunc_Engin.ScoreID = @n[type=marker] reizo_mcfunc_Engin.ScoreID as @n[type=marker] run function rpg:asset/mob/0015.block_eater/remove/chaser

# 音
playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.15 1.5

# 親クラスの動作
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}