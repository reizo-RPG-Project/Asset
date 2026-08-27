#> rpg:asset/mob/0020.fire_fox/attack/_
#
# 
#
# @within function rpg:asset/mob/0020.fire_fox/init/_

# 確率で燃える
execute if predicate {condition:"random_chance",chance:0.85} as @p[tag=RPG.Victim] at @s run function rpg:asset/mob/0020.fire_fox/attack/on_fire

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"attack/_"}