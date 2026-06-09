#> rpg:asset/object/0015.cobweb_projectile/placed_block/_
#
# 
#
# @within function rpg:asset/object/0015.cobweb_projectile/tick/_

# タイマーダウン
execute if score @s RPG.Mob.0015.Timer matches 1.. run return run scoreboard players remove @s RPG.Mob.0015.Timer 1

# 0になったら死
execute if score @s RPG.Mob.0015.Timer matches ..0 run function reizo_mcfunc_engin:api/object/remove