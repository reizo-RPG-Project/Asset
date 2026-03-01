#> rpg/asset/object/0009.shop_interaction/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
summon interaction ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"],width:1f, Passengers:[{id:"chest_minecart",Invulnerable:1b,CustomName:"よろず屋",CustomNameVisible:0b,DisplayState:{Name:"barrier"}}]}