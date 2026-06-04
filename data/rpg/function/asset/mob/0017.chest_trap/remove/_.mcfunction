#> rpg:asset/mob/0017.chest_trap/remove/_
#
# 
#
# @within function rpg:asset/mob/0017.chest_trap/explosion/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}

# ブロックを消す
setblock ~ ~ ~ air

# 演出
    playsound block.chest.close master @a ~ ~ ~ 1 0.5
    particle minecraft:poof ~ ~1 ~ 0.05 0.6 0.05 0 5