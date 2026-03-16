#> rpg:asset/item/0040.abstract_status_up/common/str/del.m
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/common/str/stash

# Valueの取得
$execute store result score $STR RPG.Item.0040.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.STR[{ID:"$(ID)"}].Value

# データの削除
$data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.STR[{ID:"$(ID)"}]