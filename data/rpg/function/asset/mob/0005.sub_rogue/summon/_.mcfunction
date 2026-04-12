#> rpg/asset/mob/0005.sub_rogue/summon/_
#
# Mobの召喚処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 元となるEntityの召喚
summon evoker ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Mob","reizo_mcfunc_Engin.Mob.Init"],Passengers:[{id:"zombie",attributes:[{id:"scale",base:0.01}],active_effects:[{id:"invisibility",duration:1,show_particles:0b}],Silent:1b,Invulnerable:1b}],NoAI:1b}