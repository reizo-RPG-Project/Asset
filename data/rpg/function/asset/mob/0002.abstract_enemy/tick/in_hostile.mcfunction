#> rpg:asset/mob/0002.abstract_enemy/tick/in_hostile
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 自身の敵対者にタグを付与
execute on target run tag @s add RPG.Mob.0002.Target

# メソッドの呼び出し
function reizo_mcfunc_engin:asset/mob/call.m {method:"in_hostile/_"}

# タグ剥奪
execute on target run tag @s[tag=RPG.Mob.0002.Target] remove RPG.Mob.0002.Target