#> rpg:asset/mob/0012.npc_bee/init/_
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/register

# 透明化
effect give @s invisibility infinite 1 true

# ハチを召喚
summon bee ~ ~ ~ {Tags:["RPG.Mob.0012.Bee"],NoAI:1b,Team:"NoCol",attributes:[{id:"scale",base:0.7}]}

# 親クラス動作の呼び出し
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
    function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}