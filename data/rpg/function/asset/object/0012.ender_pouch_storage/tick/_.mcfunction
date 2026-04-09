#> rpg/asset/object/0012.ender_pouch_storage/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 開けたな！
execute if score @s reizo_mcfunc_Engin.KillTimer matches 1 at @a[distance=..15] if score @s reizo_mcfunc_Engin.ScoreID = @p reizo_mcfunc_Engin.ScoreID if entity @p[tag=RPG.Obj.0012.Open] run return run function rpg:asset/object/0012.ender_pouch_storage/tick/open/_

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"tick/_"}