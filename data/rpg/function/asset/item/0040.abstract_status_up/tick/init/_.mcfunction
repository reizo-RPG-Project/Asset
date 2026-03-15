#> rpg:asset/item/0040.abstract_status_up/tick/init/_
#
# 
#
# @within function rpg:asset/item/0040.abstract_status_up/tick/_

# ステータスアップ
    execute if data storage reizo_mcfunc_engin:context data.Field.HP run function rpg:asset/item/0040.abstract_status_up/tick/init/hp/_
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0040.abstract_status_up/tick/init/str/_
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0040.abstract_status_up/tick/init/int/_
    execute if data storage reizo_mcfunc_engin:context data.Field.DEF run function rpg:asset/item/0040.abstract_status_up/tick/init/def/_

# Init処理をしたことを宣言
tag @s add RPG.Item.0040.Init