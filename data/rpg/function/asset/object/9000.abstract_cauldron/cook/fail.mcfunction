#> rpg:asset/object/9000.abstract_cauldron/cook/fail
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/cook/_

# アイテムを戻す
function rpg:asset/object/9000.abstract_cauldron/common/give_back/foreach

# 演出
function rpg:asset/object/9000.abstract_cauldron/common/fail_direction

# お知らせ
tellraw @a ["<",{"text":"0",font:"icon/face/0005.cauldron/_"},"ナベっすぁん。","> レシピがないヨ"]