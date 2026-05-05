#> rpg:asset/mob/0015.block_eater/attack/_
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/summon/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"attack/_"}

# ダメージを与えたら死ぬ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}