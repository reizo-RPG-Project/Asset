#> rpg:asset/mob/0019.mischief_fox/remove/_
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/tick/_

# キツネを殺す
execute on vehicle run kill @s

# 俺は人目のつかないところで...
tp @s ~ ~-1000 ~

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}