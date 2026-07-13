#> rpg:asset/item/0067.plant_wand/common/reset
#
# 
#
# @within function rpg:asset/item/0067.plant_wand/tick/is_sunny

# ステータスを戻す
    scoreboard players remove @s RPG.Bonus.INT 2
    scoreboard players remove @s RPG.Bonus.MP_MAX 5
    tag @s add RPG.StatusUpdate

# データを消去
data remove storage reizo_mcfunc_engin:context this.IsSunny

# 演出
    playsound block.bell.use master @s ~ ~ ~ 0.5 0