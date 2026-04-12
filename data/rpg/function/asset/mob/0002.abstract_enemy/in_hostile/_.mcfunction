#> rpg:asset/mob/0002.abstract_enemy/in_hostile/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 自身の敵対者にタグを付与
execute on target run tag @s add RPG.Mob.0002.Target

# AIタイマーアップ
scoreboard players add @s RPG.Mob.0002.AITimer 1

# これが俺の...本気だ！
execute if data storage reizo_mcfunc_engin:context data.Field{Seriously:1b} if score @s RPG.Mob.0002.SeriouslyValue >= @s RPG.HP run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"in_seriously/_"}

# Attackerタグがついたなら攻撃処理
execute if entity @s[tag=RPG.Attacker] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"attack/_"}

# タグ剥奪
tag @a[tag=RPG.Mob.0002.Target] remove RPG.Mob.0002.Target