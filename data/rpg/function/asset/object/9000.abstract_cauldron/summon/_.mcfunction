#> rpg:asset/object/9000.abstract_cauldron/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"]}