#> rpg:asset/mob/0011.goat/tick/in_hostile/_
#
# 
#
# @within function rpg:asset/mob/0011.goat/tick/_

# プレイヤーの方をずっと向く
rotate @s facing entity @p[gamemode=!spectator,distance=..8]

# スコアアップ
scoreboard players add @s RPG.Mob.0011.Timer 1

# スコアが150(7.5秒)からジャンプ
execute if score @s RPG.Mob.0011.Timer matches 150 run function rpg:asset/mob/0011.goat/tick/in_hostile/jump

# スコアが200(10秒)でスコアリセット
execute if score @s RPG.Mob.0011.Timer matches 200 run scoreboard players reset @s RPG.Mob.0011.Timer

# Jumpingタグが付いている！
execute if entity @s[tag=RPG.Mob.0011.Jumping] run function rpg:asset/mob/0011.goat/tick/in_hostile/jumping