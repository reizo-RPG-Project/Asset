#> rpg:asset/object/9000.abstract_cauldron/cook/_
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/interaction/_

# レシピに合っているかどうかチェック
    data modify storage reizo_mcfunc_engin:context this.RecipeCeck.ItemID.ID_0 set from storage reizo_mcfunc_engin:context this.Items[0]
    data modify storage reizo_mcfunc_engin:context this.RecipeCeck.ItemID.ID_1 set from storage reizo_mcfunc_engin:context this.Items[1]
    data modify storage reizo_mcfunc_engin:context this.RecipeCeck.ItemID.ID_2 set from storage reizo_mcfunc_engin:context this.Items[2]
    function rpg:asset/object/9000.abstract_cauldron/cook/check.m with storage reizo_mcfunc_engin:context this.RecipeCeck.ItemID
    data remove storage reizo_mcfunc_engin:context this.RecipeCeck

# 合っている場合、そのIDの名前のアイテムを出す
function rpg:asset/object/9000.abstract_cauldron/common/give.m with storage reizo_mcfunc_engin:context this.Cook

# IDが無かったらアイテムを戻す
execute unless data storage reizo_mcfunc_engin:context this.Cook.ItemID run function rpg:asset/object/9000.abstract_cauldron/common/give_back/foreach

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Items
    data remove storage reizo_mcfunc_engin:context this.Cook
    data remove entity @s interaction