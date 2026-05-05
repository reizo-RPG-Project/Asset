#> rpg:asset/mob/0015.block_eater/trigger/attack
#
# 
#
# @within function rpg:asset/mob/0015.block_eater/trigger/_

# 剥奪
advancement revoke @s only rpg:asset/mob/0015/attack

# エヴォーカーの牙じゃなかったら終了
execute unless entity @e[type=evoker_fangs,distance=..3,tag=RPG.Mob.0015] run return 0

# タグツケ
tag @s add RPG.Victim

# 攻撃処理を呼び出し
execute as @e[type=evoker_fangs,distance=..3,tag=RPG.Mob.0015] run function rpg:asset/mob/0015.block_eater/trigger/core/attack/call