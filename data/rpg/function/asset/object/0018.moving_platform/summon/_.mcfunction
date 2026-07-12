#> rpg:asset/object/0018.moving_platform/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
execute align xyz run summon item_display ~0.5 ~ ~0.5 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"],Passengers:[{id:"shulker",Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]}]}