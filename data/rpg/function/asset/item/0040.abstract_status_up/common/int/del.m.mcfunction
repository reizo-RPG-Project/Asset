#> rpg:asset/item/0040.abstract_status_up/common/int/del.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/int/_

# Valueの取得
$execute store result score $INT RPG.Item.0040.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.INT[{ID:"$(ID)"}].Value

# データの削除
$data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.INT[{ID:"$(ID)"}]