#> rpg:asset/item/0040.abstract_status_up/not_hold/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/register

# お願いOMD!
function #oh_my_dat:please

# OMD内のデータを取得
data modify storage reizo_mcfunc_engin:context this.List set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List

# リセット
    execute if data storage reizo_mcfunc_engin:context data.Field.HP_MAX unless score @s RPG.HP_MAX = @s RPG.OriginHP_MAX run function rpg:asset/item/0040.abstract_status_up/not_hold/status/hp_max/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR unless score @s RPG.STR = @s RPG.OriginSTR run function rpg:asset/item/0040.abstract_status_up/not_hold/status/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT unless score @s RPG.INT = @s RPG.OriginINT run function rpg:asset/item/0040.abstract_status_up/not_hold/status/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF unless score @s RPG.DEF = @s RPG.OriginDEF run function rpg:asset/item/0040.abstract_status_up/not_hold/status/def/_

# this内のデータをOMDに移動
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0040.List set from storage reizo_mcfunc_engin:context this.List

# お掃除
data remove storage reizo_mcfunc_engin:context this