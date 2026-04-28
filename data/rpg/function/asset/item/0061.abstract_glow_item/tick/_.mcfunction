#> rpg:asset/0061.abstract_glow_item/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 持ってる時は光るオブジェクトを召喚する
execute align xyz positioned ~0.5 ~1.5 ~0.5 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0011.light",namespace:"rpg"}