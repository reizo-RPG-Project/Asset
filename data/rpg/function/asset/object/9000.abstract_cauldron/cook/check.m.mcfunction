#> rpg:asset/object/9000.abstract_cauldron/cook/check.m
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/cook/_

$data modify storage reizo_mcfunc_engin:context this.Cook.ItemID set from storage reizo_mcfunc_engin:context this.Recipes[{ItemID:{ID_0:"$(ID_0)",ID_1:"$(ID_1)",ID_2:"$(ID_2)"}}].result.RecipeID
execute if data storage reizo_mcfunc_engin:context this.Cook.ItemID run return 1
$execute unless data storage reizo_mcfunc_engin:context this.Cook.ItemID run return run data modify storage reizo_mcfunc_engin:context this.Cook.ItemID set from storage reizo_mcfunc_engin:context this.Recipes[{ItemID:{ID_0:"$(ID_0)",ID_2:"$(ID_1)",ID_1:"$(ID_2)"}}].result.RecipeID
$execute unless data storage reizo_mcfunc_engin:context this.Cook.ItemID run return run data modify storage reizo_mcfunc_engin:context this.Cook.ItemID set from storage reizo_mcfunc_engin:context this.Recipes[{ItemID:{ID_1:"$(ID_0)",ID_2:"$(ID_1)",ID_0:"$(ID_2)"}}].result.RecipeID
$execute unless data storage reizo_mcfunc_engin:context this.Cook.ItemID run return run data modify storage reizo_mcfunc_engin:context this.Cook.ItemID set from storage reizo_mcfunc_engin:context this.Recipes[{ItemID:{ID_2:"$(ID_0)",ID_0:"$(ID_1)",ID_1:"$(ID_2)"}}].result.RecipeID
$execute unless data storage reizo_mcfunc_engin:context this.Cook.ItemID run return run data modify storage reizo_mcfunc_engin:context this.Cook.ItemID set from storage reizo_mcfunc_engin:context this.Recipes[{ItemID:{ID_2:"$(ID_0)",ID_1:"$(ID_1)",ID_0:"$(ID_2)"}}].result.RecipeID
$execute unless data storage reizo_mcfunc_engin:context this.Cook.ItemID run return run data modify storage reizo_mcfunc_engin:context this.Cook.ItemID set from storage reizo_mcfunc_engin:context this.Recipes[{ItemID:{ID_1:"$(ID_0)",ID_0:"$(ID_1)",ID_2:"$(ID_2)"}}].result.RecipeID