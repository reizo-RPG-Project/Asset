#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/index/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/weight/foreach

# データがすでにある場合は動作を中断する
execute if data storage reizo_mcfunc_engin:context this.SetItem.PushData run return 0

# ランダムに生成された値がスコアに入っていない場合、取得する。
execute store result score $Item.0043.SetItem.Weight_Random RPG.Temp run data get storage reizo_mcfunc_engin:context this.SetItem.Weight.Random.result

tellraw @a {"score":{name:"$Item.0043.SetItem.Weight_Random",objective:"RPG.Temp"},color:"green"}
tellraw @a {"score":{name:"$Item.0043.SetItem.Weight_Sum",objective:"RPG.Temp"}}

# Sumがrより小さくなったらそこのデータを取得する
execute if score $Item.0043.SetItem.Weight_Random RPG.Temp < $Item.0043.SetItem.Weight_Sum RPG.Temp run data modify storage reizo_mcfunc_engin:context this.SetItem.PushData set from storage reizo_mcfunc_engin:context this.SetItem.Weight.data.Entries[0]