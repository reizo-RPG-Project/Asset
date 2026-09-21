#> rpg:asset/effect/0008.moon_gravity/remove/_
#
# 
#
# @within function rpg:asset/effect/0008.moon_gravity/tick/_

# 戻す
scoreboard players set @s RPG.Gravitry 10

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"remove/_"}