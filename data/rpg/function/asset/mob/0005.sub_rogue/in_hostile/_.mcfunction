#> rpg:asset/mob/0005.sub_rogue/in_hostile/_
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/_

# タイマーアップ
scoreboard players add @s RPG.Mob.0005.Timer 1

# 召喚
    execute if score @s RPG.Mob.0005.Timer = @s RPG.Mob.0005.Start_Time run function rpg:asset/mob/0005.sub_rogue/common/init
    execute if score @s RPG.Mob.0005.Timer = @s RPG.Mob.0005.Reset_Time as @e[type=#rpg:mob/0005/vanilla_summon_mob,tag=!reizo_mcfunc_Engin.Mob,tag=!reizo_mcfunc_Engin.Object,distance=..25] run function rpg:asset/mob/0005.sub_rogue/common/reset
    execute if score @s RPG.Mob.0005.Timer >= @s RPG.Mob.0005.Start_Time.Temp if score @s RPG.Mob.0005.Timer <= @s RPG.Mob.0005.Summon_Time positioned ~ ~2 ~ run function rpg:asset/mob/0005.sub_rogue/common/fx
    execute if score @s RPG.Mob.0005.Timer = @s RPG.Mob.0005.Summon_Time positioned ~ ~2.1 ~ run function rpg:asset/mob/0005.sub_rogue/common/_

# 常に
execute if entity @s[tag=!RPG.Mob.0005.Summon] run data modify entity @s SpellTicks set value 1