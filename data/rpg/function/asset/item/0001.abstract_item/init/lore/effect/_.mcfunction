#> rpg:asset/item/0001.abstract_item/init/lore/effect/_
#
# 再帰で説明文を増やす
#
# @within function rpg:asset/item/0001.abstract_item/init/_

# 説明文構成
data modify entity @s Item.components."minecraft:lore" append value ["",{"text":"エフェクト: ",color:"white",italic:0b}]

# 別けてデータを決める。
function rpg:asset/item/0001.abstract_item/init/lore/effect/foreach