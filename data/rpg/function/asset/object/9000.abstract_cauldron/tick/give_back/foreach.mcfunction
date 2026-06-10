#> rpg:asset/object/9000.abstract_cauldron/tick/give_back/foreach
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/_

# 先頭取得
data modify storage reizo_mcfunc_engin:context this.GiveBack.ItemID set from storage reizo_mcfunc_engin:context this.Items[0]

# アイテムを入手させる
function rpg:asset/object/9000.abstract_cauldron/common/give.m with storage reizo_mcfunc_engin:context this.GiveBack

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Items[0]
    data remove storage reizo_mcfunc_engin:context this.GiveBack

# 再帰
execute if data storage reizo_mcfunc_engin:context this.Items[0] run function rpg:asset/object/9000.abstract_cauldron/tick/give_back/foreach