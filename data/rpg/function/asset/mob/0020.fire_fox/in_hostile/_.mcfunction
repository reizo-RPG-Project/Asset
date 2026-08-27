#> rpg:asset/mob/0020.fire_fox/in_hostile/_
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/in_hostile/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"in_hostile/_"}

# ある一定たったらスキル発動
execute if score @s RPG.Mob.0002.AITimer matches 240.. run function rpg:asset/mob/0020.fire_fox/in_hostile/skills/_