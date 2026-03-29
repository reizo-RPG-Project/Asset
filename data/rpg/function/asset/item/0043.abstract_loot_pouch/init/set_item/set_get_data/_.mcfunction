#> rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_get_data/_
#
# 
#
# @within function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/_

# ランダムに決める
    # 配列の長さを取得する
    execute store result storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Length.Value int 1 run data get storage reizo_mcfunc_engin:context data.Field.Pools
    # 取得した長さからランダムに選ぶ
    execute if data storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Length{Value:1} run data modify storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Index.Value set value 1
    execute unless data storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Length{Value:1} run function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_get_data/roll.m with storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Length
    # データ取得
    function rpg:asset/item/0043.abstract_loot_pouch/init/set_item/set_get_data/get_data.m with storage reizo_mcfunc_engin:context this.SetItem.SetGetData.Index
    # お掃除
    data remove storage reizo_mcfunc_engin:context this.SetItem.SetGetData