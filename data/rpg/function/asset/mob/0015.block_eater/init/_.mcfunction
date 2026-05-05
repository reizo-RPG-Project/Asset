#> rpg:asset/mob/0015.block_eater/init/_
#
# 
#
# @within function rpg:asset/mob/0016.block_eater_chaser/init/_

# スコアで結びつけ
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @n[type=marker] reizo_mcfunc_Engin.ScoreID

# スコアセット
scoreboard players set @s RPG.Mob.0015.Timer 20

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}