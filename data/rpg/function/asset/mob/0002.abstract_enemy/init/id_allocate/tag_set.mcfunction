#> rpg:asset/mob/0002.abstract_enemy/init/id_allocate/tag_set
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/init/id_allocate/_

    # オーバーフローしてたらデータセット、これを繰り返す
    execute unless score $Temp RPG.Mob.0002.ID matches 128.. run tag @s add RPG.Mob.0002.ID0.0
    execute if score $Temp RPG.Mob.0002.ID matches 128.. run tag @s add RPG.Mob.0002.ID0.1
    execute if score $Temp RPG.Mob.0002.ID matches 128.. run scoreboard players remove $Temp RPG.Mob.0002.ID 128
    execute unless score $Temp RPG.Mob.0002.ID matches 64.. run tag @s add RPG.Mob.0002.ID1.0
    execute if score $Temp RPG.Mob.0002.ID matches 64.. run tag @s add RPG.Mob.0002.ID1.1
    execute if score $Temp RPG.Mob.0002.ID matches 64.. run scoreboard players remove $Temp RPG.Mob.0002.ID 64
    execute unless score $Temp RPG.Mob.0002.ID matches 32.. run tag @s add RPG.Mob.0002.ID2.0
    execute if score $Temp RPG.Mob.0002.ID matches 32.. run tag @s add RPG.Mob.0002.ID2.1
    execute if score $Temp RPG.Mob.0002.ID matches 32.. run scoreboard players remove $Temp RPG.Mob.0002.ID 32
    execute unless score $Temp RPG.Mob.0002.ID matches 16.. run tag @s add RPG.Mob.0002.ID3.0
    execute if score $Temp RPG.Mob.0002.ID matches 16.. run tag @s add RPG.Mob.0002.ID3.1
    execute if score $Temp RPG.Mob.0002.ID matches 16.. run scoreboard players remove $Temp RPG.Mob.0002.ID 16
    execute unless score $Temp RPG.Mob.0002.ID matches 8.. run tag @s add RPG.Mob.0002.ID4.0
    execute if score $Temp RPG.Mob.0002.ID matches 8.. run tag @s add RPG.Mob.0002.ID4.1
    execute if score $Temp RPG.Mob.0002.ID matches 8.. run scoreboard players remove $Temp RPG.Mob.0002.ID 8
    execute unless score $Temp RPG.Mob.0002.ID matches 4.. run tag @s add RPG.Mob.0002.ID5.0
    execute if score $Temp RPG.Mob.0002.ID matches 4.. run tag @s add RPG.Mob.0002.ID5.1
    execute if score $Temp RPG.Mob.0002.ID matches 4.. run scoreboard players remove $Temp RPG.Mob.0002.ID 4
    execute unless score $Temp RPG.Mob.0002.ID matches 2.. run tag @s add RPG.Mob.0002.ID6.0
    execute if score $Temp RPG.Mob.0002.ID matches 2.. run tag @s add RPG.Mob.0002.ID6.1
    execute if score $Temp RPG.Mob.0002.ID matches 2.. run scoreboard players remove $Temp RPG.Mob.0002.ID 2
    execute unless score $Temp RPG.Mob.0002.ID matches 1.. run tag @s add RPG.Mob.0002.ID7.0
    execute if score $Temp RPG.Mob.0002.ID matches 1.. run tag @s add RPG.Mob.0002.ID7.1
    execute if score $Temp RPG.Mob.0002.ID matches 1.. run scoreboard players remove $Temp RPG.Mob.0002.ID 1
    # お掃除
    scoreboard players reset $Temp RPG.Mob.0002.ID