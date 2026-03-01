#> rpg/asset/object/0009.shop_interaction/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# Thisとつなげる
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @p[tag=This] reizo_mcfunc_Engin.ScoreID

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# ここでMob 0008のdataを解放、そのままpopを使いたいところだが[0]にはObj 0009のdataがあるためこちら側で取る
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:context dataStackStash[-2].Value

# ショップアイテムセット
execute on passengers run data modify entity @s Items set from storage reizo_mcfunc_engin:context data.Field.Items