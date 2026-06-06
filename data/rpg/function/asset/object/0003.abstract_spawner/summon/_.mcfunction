#> rpg/asset/object/0003.abstract_spawner/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# ほぼ同座標に同Entityがいるのなら止める
execute if entity @n[type=marker,distance=..0.5,nbt={data:{Registry:{Extends:[{ID:"0003.abstract_spawner"}]}}}] run return 0

# 元となるEntityの召喚
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"]}