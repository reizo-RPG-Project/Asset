#> rpg:asset/item/0042.earth_blessing/tick/on_ground/init
#
# 
#
# @within function rpg:asset/item/0042.earth_blessing/tick/on_ground/_

# すでにInit処理をしたことを宣言する
tag @s add RPG.Item.0042.OnGround.isInitialized

# ステータスアップ
    scoreboard players add @s RPG.HP_MAX 20
    scoreboard players add @s RPG.STR 10
    scoreboard players add @s RPG.DEF 15

# 演出
    particle trial_spawner_detection ~ ~ ~ 0.3 0.9 0.3 0 5 normal @a[distance=..10]
    playsound block.amethyst_block.break master @a[distance=..10] ~ ~ ~ 1 2