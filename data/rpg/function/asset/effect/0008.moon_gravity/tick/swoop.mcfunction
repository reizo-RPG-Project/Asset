#> rpg:asset/effect/0008.moon_gravity/tick/swoop
#
# 
#
# @within function rpg:asset/effect/0008.moon_gravity/tick/_

# 演出
    playsound item.trident.riptide_1 master @s ~ ~ ~ 1 1.5 1
    particle gust ~ ~ ~

# 何段階か上がる
    execute if score @s RPG.Gravitry matches 25.. run return run scoreboard players add @s RPG.Gravitry 5

# 重力の変更
execute unless score @s RPG.Gravitry matches 25 run scoreboard players set @s RPG.Gravitry 25