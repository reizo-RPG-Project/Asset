#> rpg:asset/0043.abstract_loot_pouch/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

#> ID確認
    # 前回保存したIDを取得
    scoreboard players operation $Last RPG.Item.0043.ID = @s RPG.Item.0043.ID
    # 今回のIDを取得
    execute store result score @s RPG.Item.0043.ID run data get storage reizo_mcfunc_engin:context this.ItemID
    # 今回のIDと前回保存したIDを比べて同じじゃなかったら再召喚を行う
    execute unless score @s RPG.Item.0043.ID = $Last RPG.Item.0043.ID run tag @s remove RPG.Obj.0009.Open

# オブジェクトの召喚
execute if entity @s[tag=!RPG.Obj.0009.Open] positioned ~ ~1.1 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0009.loot_chest",namespace:"rpg"}