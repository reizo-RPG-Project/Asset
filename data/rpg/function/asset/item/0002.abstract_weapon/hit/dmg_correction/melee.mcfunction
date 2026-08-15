#> rpg:asset/item/0002.abstract_weapon/hit/dmg_correction/melee
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/hit/_

# 補正
    scoreboard players operation @s RPG.DMG *= $Item.0002.AttackChargeMultiplier RPG.Temp
    scoreboard players operation @s RPG.DMG /= #1000 RPG.Const