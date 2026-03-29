#> rpg:asset/object/0009.loot_chest/tick/open/_
#
# @s => インタラクション @p => プレイヤー
#
# @within function rpg:asset/object/0009.loot_chest/tick/_

# プレイヤーがアイテムを持っていない場合動作を止め俺は死ぬ
execute unless data entity @p SelectedItem.components."minecraft:custom_data".Item.Registry.Extends[{ID:"0043.abstract_loot_pouch"}] run return run function rpg:asset/object/0009.loot_chest/tick/open/remove

# Init処理
execute if entity @s[tag=!RPG.Obj.0009.Open.Init] run function rpg:asset/object/0009.loot_chest/tick/open/init/_

# ここからはTP
execute positioned ~ ~1.1 ~ run tp @s ~ ~ ~

# プレイヤーの動作
execute as @p run function rpg:asset/object/0009.loot_chest/tick/open/player/_