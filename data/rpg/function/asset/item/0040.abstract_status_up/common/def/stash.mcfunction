#> rpg:asset/item/0040.abstract_status_up/common/def/stash
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/def/_

# スタックに新しい空間を用意する
data modify storage reizo_mcfunc_engin:context this.List.DEF append value {}

# データを入れる
    data modify storage reizo_mcfunc_engin:context this.List.DEF[-1].ID set from storage reizo_mcfunc_engin:context origin_Args.ID
    data modify storage reizo_mcfunc_engin:context this.List.DEF[-1].Value set from storage reizo_mcfunc_engin:context data.Field.DEF

# OMDにコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List.DEF set from storage reizo_mcfunc_engin:context this.List.DEF

# お掃除
    data remove storage reizo_mcfunc_engin:context this.List.DEF