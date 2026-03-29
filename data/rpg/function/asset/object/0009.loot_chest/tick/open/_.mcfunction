#> rpg:asset/object/0009.loot_chest/tick/open/_
#
# @s => インタラクション @p => プレイヤー
#
# @within function rpg:asset/object/0009.loot_chest/tick/_

# スコアでアイテムと結びつけ
execute store result score @s RPG.Obj.0009.ScoreID run data get entity @p SelectedItem.components."minecraft:custom_data".Item.this.ID

# ここからはTP
execute positioned ~ ~1.1 ~ run tp @s ~ ~ ~

# プレイヤーの動作
execute as @p run function rpg:asset/object/0009.loot_chest/tick/open/player/_