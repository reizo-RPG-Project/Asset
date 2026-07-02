#> rpg:asset/mob/0019.mischief_fox/in_hostile/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/in_hostile

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"in_hostile/_"}

# 2秒ったらシャッフル
execute if score @s RPG.Mob.0019.ShuffleTimer matches 40.. run return run function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/_

# プレイヤーの半径nに入ったらタイマー作動
execute if entity @p[distance=..1.5] run scoreboard players add @s RPG.Mob.0019.ShuffleTimer 1