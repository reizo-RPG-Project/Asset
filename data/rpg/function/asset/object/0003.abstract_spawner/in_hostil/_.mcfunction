#> rpg:asset/object/0003.abstract_spawner/in_hostil/_
#
# 
#
# @within function rpg:asset/object/0003.abstract_spawner/tick/_

# パーティクル
function rpg:asset/object/0003.abstract_spawner/in_hostil/particle

# ...本気だ！
execute if entity @s[tag=RPG.Obj.0003.in_seriously] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"in_seriously/_"}

# スコアダウン
execute unless score @s RPG.Obj.0003.In_Hostil.Delay matches ..-1 if entity @s[tag=!RPG.Obj.0003.Summoned] run scoreboard players remove @s RPG.Obj.0003.In_Hostil.Delay 1

# スコアが0になったら召喚
execute if score @s RPG.Obj.0003.In_Hostil.Delay matches 0 run return run function rpg:asset/object/0003.abstract_spawner/in_hostil/summon/_

# すでに召喚していて、周りに召喚した奴らがいないのなら
execute if entity @s[tag=RPG.Obj.0003.Summoned] run function rpg:asset/object/0003.abstract_spawner/in_hostil/dmg/check.m with storage reizo_mcfunc_engin:context this

# Init
execute if entity @s[tag=!RPG.Obj.0003.Inited] run function rpg:asset/object/0003.abstract_spawner/in_hostil/init