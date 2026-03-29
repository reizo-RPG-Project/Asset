#> rpg/asset/object/0009.loot_chest/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
summon interaction ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"],Passengers:[{id:"chest_minecart",DisplayState:{Name:"barrier"},Tags:["RPG.Obj.0009.Chest"]}]}