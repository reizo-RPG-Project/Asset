#> rpg:asset/item/0001.abstract_item/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# ツールチップに移る文字を隠す
    data modify entity @s Item.components."minecraft:tooltip_display".hidden_components append value "attribute_modifiers"
    data modify entity @s Item.components."minecraft:tooltip_display".hidden_components append value "unbreakable"

# Countのセット
data modify entity @s Item.components."minecraft:max_stack_size" set from storage reizo_mcfunc_engin:context this.Count

# ステータスによる説明文の変更
function rpg:asset/item/0001.abstract_item/init/lore/_

# レア度のセット
    # データを反映する。
    function rpg:asset/item/0001.abstract_item/init/rarity/set_data
    # 色の反映
    execute unless data storage reizo_mcfunc_engin:context this.Rarity{Value:0} run data modify storage reizo_mcfunc_engin:context this.Init.Lore[0].color set from storage reizo_mcfunc_engin:context this.Rarity.Color
    # [レア度]という表記
    data modify storage reizo_mcfunc_engin:context this.Init.Lore prepend value [{text:"\uE002",font:"icon/_",color:"white",italic:0b,color:"white",italic:0b},{text:"レア度: ",color:"white",italic:0b,font:"default"}]
    # Loreの先頭に追加
    data modify entity @s Item.components."minecraft:lore" append from storage reizo_mcfunc_engin:context this.Init.Lore
    # お掃除
    data remove storage reizo_mcfunc_engin:context Register.Lore