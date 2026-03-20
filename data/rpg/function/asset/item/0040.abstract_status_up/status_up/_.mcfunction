#> rpg:asset/item/0040.abstract_status_up/status_up/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/_

# お願いOMD!
function #oh_my_dat:please

# OMD内のデータを取得
data modify storage reizo_mcfunc_engin:context this.List set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX run function rpg:asset/item/0040.abstract_status_up/status_up/hp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0040.abstract_status_up/status_up/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0040.abstract_status_up/status_up/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF run function rpg:asset/item/0040.abstract_status_up/status_up/def/_

# this内のデータをOMDに移動
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List set from storage reizo_mcfunc_engin:context this.List

# お掃除
data remove storage reizo_mcfunc_engin:context this