#> rpg:triggers/item/0001.slime_fall
#
# 
#
# @within function rpg:asset/item/0053.slime_boots/register

# 実行
function reizo_mcfunc_engin:api/trigger/run.m {trigger:"item/0001"}

# 進捗剥奪
advancement revoke @s only rpg:triggers/item/0001.slime_fall