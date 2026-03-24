#> rpg:asset/item/0005.abstract_food/used/_
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/tick/_

# 食べられるか確認
execute if data storage reizo_mcfunc_engin:context data.Field{CanAlwaysEat:0b} unless score @s RPG.HP < @s RPG.HP_MAX run return 0

# HPがHPの上限値より低いなら回復
execute if score @s RPG.HP < @s RPG.HP_MAX run function rpg:asset/item/0005.abstract_food/used/recovery

# アイテムの消去
function reizo_mcfunc_engin:api/item/del.m {Slot:"mainhand",Count:1}

# 音
playsound entity.generic.eat master @s ~ ~ ~ 0.7 1