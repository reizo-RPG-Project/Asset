#> rpg/asset/object/0006.abstract_edamame/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
execute align xyz run summon item_display ~0.5 ~1 ~0.5 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"],item:{id:"wheat_seeds",components:{enchantment_glint_override:1b}},billboard:"vertical"}