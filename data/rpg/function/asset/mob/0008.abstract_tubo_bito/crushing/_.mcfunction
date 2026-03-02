#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/_
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/tick/_

# もらったアイテムが壺でなければ動作を止める
execute unless data entity @n[type=item,distance=..1.5] Item{id:"minecraft:decorated_pot"} run return 0

tellraw @a "!"

# どのアイテムの種類のツボか確認する。
    # データ取得
    data modify storage reizo_mcfunc_engin:context this.TypeList set from entity @n[type=item,distance=..1.5] Item.components."minecraft:pot_decorations"
    # データフィルター
    function rpg:asset/mob/0008.abstract_tubo_bito/crushing/filter/_
    # 出てきたタイプのデータを取得
    function rpg:asset/mob/0008.abstract_tubo_bito/crushing/get_data/_
    # データからアイテムを排出する。
    function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/_
    # データ例: [[{Rarity:1,List:["0004.wooden_sword"]},{Rarity:2,List:["0016.stone_sword"]}],[{Rarity:1,List:["0021.wooden_wand"]}]]

# 壺を消す
kill @n[type=item,distance=..1.5]