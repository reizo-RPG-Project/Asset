#> rpg:asset/mob/0009.tubo_bito/talk/give_shell/_
#
# 
#
# @within function rpg:asset/mob/0009.tubo_bito/talk/_

# Give
execute as @n[type=villager] at @s positioned ~ ~1.5 ~ run function rpg:asset/mob/0009.tubo_bito/talk/give_shell/give

# FX
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 2 0
    particle dust{color:[1,0.7,1],scale:1} ~ ~ ~ 0.3 1.0 0.3 0 7