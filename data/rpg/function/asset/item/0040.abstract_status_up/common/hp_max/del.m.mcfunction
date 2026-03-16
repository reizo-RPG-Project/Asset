#> rpg:asset/item/0040.abstract_status_up/common/hp_max/del.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_

# Valueの取得
$execute store result score $HP_MAX RPG.Item.0040.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.HP_MAX[{ID:"$(ID)"}].Value

# データの削除
$data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.HP_MAX[{ID:"$(ID)"}]