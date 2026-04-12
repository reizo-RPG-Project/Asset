#> rpg:asset/mob/0005.sub_rogue/common/_
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/in_hostile/_

# スコアアップ
scoreboard players add @s RPG.Mob.0005.Summon 1

# スコアによって変える
function rpg:asset/mob/0005.sub_rogue/common/check

# 召喚
    execute if data storage reizo_mcfunc_engin:context this.SummonCount.zombie run function rpg:asset/mob/0005.sub_rogue/in_hostile/summon/mob/zombie
    execute if data storage reizo_mcfunc_engin:context this.SummonCount.zombie_kid run function rpg:asset/mob/0005.sub_rogue/in_hostile/summon/mob/zombie_kid

# 召喚した敵に幻影であることを示すタグをつける
tag @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0002.Enemy,distance=..1] add RPG.Mob.0005.Illusion

# スコアで結びつけ
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0002.Enemy,distance=..1] run scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @s reizo_mcfunc_Engin.ScoreID

# お掃除
tag @s remove RPG.Mob.0005.Summon