#> rpg:asset/item/0040.abstract_status_up/common/def/del.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/def/_

# Valueの取得
$execute store result score $DEF RPG.Item.0040.Temp run data get storage reizo_mcfunc_engin:context this.List.DEF[{ID:"$(ID)"}].Value

# データの削除
$data remove storage reizo_mcfunc_engin:context this.List.DEF[{ID:"$(ID)"}]