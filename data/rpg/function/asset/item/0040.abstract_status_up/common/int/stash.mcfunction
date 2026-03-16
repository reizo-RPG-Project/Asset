#> rpg:asset/item/0040.abstract_status_up/common/int/stash
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/int/_

# スタックに新しい空間を用意する
data modify storage reizo_mcfunc_engin:context this.List.INT append value {}

# データを入れる
    data modify storage reizo_mcfunc_engin:context this.List.INT[-1].ID set from storage reizo_mcfunc_engin:context origin_data.ID
    data modify storage reizo_mcfunc_engin:context this.List.INT[-1].Value set from storage reizo_mcfunc_engin:context data.Field.INT

# OMDにコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.INT set from storage reizo_mcfunc_engin:context this.List.INT

# お掃除
    data remove storage reizo_mcfunc_engin:context this.List.INT