#> rpg:asset/mob/0018.spider/in_hostie/_
#
# 
#
# @within function rpg:asset/mob/0018.spider/tick/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"in_hostile/_"}

# 吐いてくる
execute if score @s RPG.Mob.0002.AITimer matches 60 run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"shoot/_"}

# リセット
execute if score @s RPG.Mob.0002.AITimer matches 90.. run scoreboard players reset @s RPG.Mob.0002.AITimer