#> rpg:asset/object/0014.boss_portal/tick/in/_
#
# 
#
# @within function rpg:asset/object/0014.boss_portal/tick/_

# 入っても戻される
execute if score @s RPG.Obj.0014.Duration matches 1.. run return run function rpg:asset/object/0014.boss_portal/tick/in/fail

# Duratinoセット
scoreboard players set @s RPG.Obj.0014.Duration 100

# プレイヤー数を確認、全員揃っていなければ戻す
    execute store result score $PlayerCount RPG.Temp if entity @s
    execute if score $PlayerCount RPG.Temp = $PlayerCount reizo_mcfunc_Engin._ run return run function rpg:asset/object/0014.boss_portal/tick/in/fail