#> rpg:asset/item/0040.abstract_status_up/common/str/del.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/common/str/stash

# Valueの取得
$execute store result score $STR RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.List.STR[{ID:"$(ID)"}].Value

# データの削除
$data remove storage reizo_mcfunc_engin:context this.List.STR[{ID:"$(ID)"}]