#> rpg/asset/mob/0002.abstract_enemy/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 敵対時のメソッド
execute if predicate rpg:asset/mob/0002/in_hostil run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"in_hostile/_"}

# 誰とも敵対していない場合、タイマーをリセット
execute if entity @s[predicate=!rpg:asset/mob/0002/in_hostil] run scoreboard players reset @s RPG.Mob.0002.AITimer

# Hitタグが付いたならヒット処理をする
execute if entity @s[tag=RPG.Mob.0002.Hit] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"hit/_"}