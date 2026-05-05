#> rpg:asset/mob/0016.block_eater_chaser/remove/_
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/remove/chaser

# 演出的な
particle cloud ^ ^ ^5 0.3 0.3 0.3 0 5

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}