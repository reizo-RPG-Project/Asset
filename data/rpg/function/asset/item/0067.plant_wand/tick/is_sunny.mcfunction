#> rpg:asset/item/0067.plant_wand/tick/is_sunny
#
# 
#
# @within function rpg:asset/item/0067.plant_wand/tick/_

# ステータスアップ
    scoreboard players add @s RPG.INT 2
    scoreboard players add @s RPG.MP_MAX 5

# 演出
    playsound block.bell.use master @s ~ ~ ~ 0.5 2

# 晴れていることを宣言
data modify storage reizo_mcfunc_engin:context this.IsSunny set value 1b