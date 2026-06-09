#> rpg:asset/object/0015.cobweb_projectile/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
summon armor_stand ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"],Invisible:1b,Silent:1b,Small:1b,attributes:[{id:"minecraft:scale",base:0.0625}]}