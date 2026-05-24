#> rpg:asset/item/0005.abstract_food/used/check
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/used/_

# 値が最大値より低くなかったら1を返す
    execute if data storage reizo_mcfunc_engin:context this.Recovery.HP store result storage reizo_mcfunc_engin:context this.IsCanEat.HP byte 1 if score @s RPG.HP < @s RPG.HP_MAX
    execute if data storage reizo_mcfunc_engin:context this.Recovery.MP store result storage reizo_mcfunc_engin:context this.IsCanEat.MP byte 1 if score @s RPG.MP < @s RPG.MP_MAX

# 存在するデータによって動作を変更
    execute if data storage reizo_mcfunc_engin:context this.Recovery.HP unless data storage reizo_mcfunc_engin:context this.Recovery.MP if data storage reizo_mcfunc_engin:context this.IsCanEat{HP:0b} run return run data modify storage reizo_mcfunc_engin:context this.IsCanEat set value 0b
    execute unless data storage reizo_mcfunc_engin:context this.Recovery.HP if data storage reizo_mcfunc_engin:context this.Recovery.MP if data storage reizo_mcfunc_engin:context this.IsCanEat{MP:0b} run return run data modify storage reizo_mcfunc_engin:context this.IsCanEat set value 0b
    execute if data storage reizo_mcfunc_engin:context this.Recovery.HP if data storage reizo_mcfunc_engin:context this.Recovery.MP if data storage reizo_mcfunc_engin:context this.IsCanEat{HP:0b,MP:0b} run return run data modify storage reizo_mcfunc_engin:context this.IsCanEat set value 0b