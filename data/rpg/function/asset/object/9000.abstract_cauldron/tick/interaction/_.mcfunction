#> rpg:asset/object/9000.abstract_cauldron/tick/interaction/_
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/_

# データがすでに三つあるなら作る
execute if data storage reizo_mcfunc_engin:context this.Items[-3] run return run function reizo_mcfunc_engin:api/call/_protected.m {Type:"object",Method:"cook/_"}

# データ取得
data modify storage reizo_mcfunc_engin:context this.Interaction.data set from entity @s interaction

# リセット
data remove entity @s interaction

# 右クリしたプレイヤーを探す
function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/find.m with storage reizo_mcfunc_engin:context this.Interaction.data

# お掃除
data remove storage reizo_mcfunc_engin:context this.Interaction