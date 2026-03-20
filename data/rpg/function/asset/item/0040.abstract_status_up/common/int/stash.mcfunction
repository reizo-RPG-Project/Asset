#> rpg:asset/item/0040.abstract_status_up/common/int/stash
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/status_up/int/_

# スタックに新しい空間を用意する
data modify storage reizo_mcfunc_engin:context this.List.INT append value {}

# データを入れる
    data modify storage reizo_mcfunc_engin:context this.List.INT[-1].ID set from storage reizo_mcfunc_engin:context origin_Args.ID
    data modify storage reizo_mcfunc_engin:context this.List.INT[-1].Value set from storage reizo_mcfunc_engin:context data.Field.INT