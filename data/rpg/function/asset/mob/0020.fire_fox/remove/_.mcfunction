#> rpg:asset/mob/0020.fire_fox/remove/_
#
# 
#
# @within function rpg:asset/mob/0020.fire_fox/init/_

# モデルを消す
execute on passengers on passengers run kill @s[type=item_display]

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}