#> rpg:asset/item/9000.echo_shell/tick/used/_
#
# 
#
# @within function rpg:asset/item/9000.echo_shell/tick/_

# 何も来ていない。
execute if entity @s[tag=!RPG.Item.9000.IsCalling] run return run function rpg:asset/item/9000.echo_shell/tick/used/not_calling

# お願いOMD!
function #oh_my_dat:please

# データを引き出す
    data modify storage reizo_mcfunc_engin:context this.CallData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.9000.CallData[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.9000.CallData[0]

# TODO:言葉を出す