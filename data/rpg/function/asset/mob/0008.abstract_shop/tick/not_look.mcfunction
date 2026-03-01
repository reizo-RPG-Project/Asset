#> rpg:asset/mob/0008.abstract_shop/tick/not_look
#
# 
#
# @within function rpg:asset/mob/0008.abstract_shop/tick/_

# タグ排除
tag @a[tag=RPG.Mob.0008.Player.Looking] remove RPG.Mob.0008.Player.Looking

# キル
execute at @e[type=interaction,tag=reizo_mcfunc_Engin.Object] if score @s reizo_mcfunc_Engin.ScoreID = @n[type=interaction,tag=reizo_mcfunc_Engin.Object] reizo_mcfunc_Engin.ScoreID as @n[type=interaction,tag=reizo_mcfunc_Engin.Object] run function reizo_mcfunc_engin:api/object/remove