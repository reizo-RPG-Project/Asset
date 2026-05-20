#> rpg/asset/object/0009.loot_chest/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# プレイヤーの持っているデータからセットするアイテムのデータを取得する
data modify storage reizo_mcfunc_engin:context this.Items set from entity @p SelectedItem.components."minecraft:custom_data".Item.this.ItemsArgs

# スコアで結びつけ
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @p reizo_mcfunc_Engin.ScoreID

# チェストトロッコの動作
execute on passengers run function rpg:asset/object/0009.loot_chest/init/passengers

# 何tickで検知するかの値を取得
execute unless score $CloseCheckTime RPG.Obj.0009.Open.Close_Check_Time = $CloseCheckTime RPG.Obj.0009.Open.Close_Check_Time store result score $CloseCheckTime RPG.Obj.0009.Open.Close_Check_Time run data get storage reizo_mcfunc_engin:context this.CloseCheckTime

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"init/_"}