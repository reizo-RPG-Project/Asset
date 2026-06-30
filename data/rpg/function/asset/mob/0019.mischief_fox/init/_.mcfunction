#> rpg:asset/mob/0019.mischief_fox/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# キツネに乗る
    summon fox ~ ~ ~
    ride @s mount @n[type=fox]

# 俺は透明
effect give @s invisibility infinite 1 true

# キツネに対しての処理
execute on vehicle run function rpg:asset/mob/0019.mischief_fox/init/vehicle

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}