#> rpg:asset/item/0005.abstract_food/used/_
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/tick/_

# 食べられるか確認
    execute if data storage reizo_mcfunc_engin:context this{CanAlwaysEat:0b} run function rpg:asset/item/0005.abstract_food/used/check
    execute if data storage reizo_mcfunc_engin:context this{IsCanEat:0b} run return run data remove storage reizo_mcfunc_engin:context this.IsCanEat

# 値が上限値より低く回復
    execute if score @s RPG.HP < @s RPG.HP_MAX run function rpg:asset/item/0005.abstract_food/used/recovery/hp
    execute if score @s RPG.MP < @s RPG.MP_MAX run function rpg:asset/item/0005.abstract_food/used/recovery/mp

# 音やら見た目関係
function rpg:asset/item/0005.abstract_food/used/fx/_

# アイテムの消去
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -1 run function reizo_mcfunc_engin:api/item/count/remove.m {Slot:"mainhand",Value:1}
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -2 run function reizo_mcfunc_engin:api/item/count/remove.m {Slot:"offhand",Value:1}

# お掃除
data remove storage reizo_mcfunc_engin:context this.IsCanEat