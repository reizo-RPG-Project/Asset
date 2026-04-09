#> rpg/asset/object/0012.ender_pouch_storage/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# プレイヤーと紐づけ
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @p reizo_mcfunc_Engin.ScoreID

# 中身を移す
execute on passengers run data modify entity @s Items set from entity @p EnderItems

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"init/_"}